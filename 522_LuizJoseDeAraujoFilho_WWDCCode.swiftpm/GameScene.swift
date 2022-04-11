//
//  File.swift
//  WWDC
//
//  Created by Luiz José de Araújo Filho on 06/04/22.
//

import SpriteKit

public class GameScene: SKScene {
	
	var tapToPlay: SKLabelNode!
	let flag: SKSpriteNode = SKSpriteNode(imageNamed: "flag.png")
	
	var questionLabel: SKLabelNode = SKLabelNode(fontNamed: "OldNewspaperTypes")
	var jornal: Jornal = Jornal(textContent: "", subjectContent: "", size: CGSize(width: 0, height: 0))
		
	var model: GameModel = GameModel()
	var currentRound: [GameData]!
	var buttons: [GameButton] = []
	var currentAnswer: String = ""
	var currentIndex: Int = 0
	
	
	override public func didMove(to view: SKView) {

		
		let background = SKSpriteNode(imageNamed: "GameBackground.png")
		background.anchorPoint = CGPoint(x: 0, y: 0)
		self.addChild(background)
		
		tapToPlay = SKLabelNode(text: "TAP TO PLAY")
		tapToPlay.fontName = "OldNewspaperTypes"
		tapToPlay.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
		
		self.addChild(tapToPlay)
		animateTap()
		
		for _ in 0...3{
			buttons.append(GameButton(name: "", labelContent: "Test"))
		}
		
		for i in 0...3{
			buttons[i].position = CGPoint(x: self.frame.midX, y: self.frame.height * (CGFloat(i) * 0.1) + buttons[i].frame.size.height)
			buttons[i].run(SKAction.fadeOut(withDuration: 0.1))
		}
		
		flag.anchorPoint = CGPoint(x: 0, y: 1)
		flag.position = CGPoint(x:0,y:self.frame.maxY)
		flag.run(SKAction.fadeOut(withDuration: 0.1))
		
		questionLabel.fontColor = .black
		questionLabel.position = CGPoint(x: self.frame.midX, y: 1000)
		questionLabel.run(SKAction.fadeOut(withDuration: 0.1))
		questionLabel.preferredMaxLayoutWidth = 600
		questionLabel.numberOfLines = 5
		
		newRound()
		configureRound(currentQuestion: currentIndex)
		
	}
	
	public func animateTap(){
		let moveUpAction = SKAction.move(to: CGPoint(x: tapToPlay.position.x, y: tapToPlay.position.y + 25) , duration: 1.5)
		
		let moveDownAction = SKAction.move(to: CGPoint(x: tapToPlay.position.x, y: tapToPlay.position.y), duration: 1.5)
		
		let sequence = SKAction.sequence([moveUpAction, moveDownAction])
		
		let repeatForever = SKAction.repeatForever(sequence)
		
		tapToPlay.run(repeatForever)
		
	}
	
	public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		if tapToPlay.parent != nil{
			tapToPlay.run(SKAction.fadeOut(withDuration: 0.2)){
				self.tapToPlay.removeFromParent()
				
				for b in self.buttons{
					if b.parent == nil{
						self.addChild(b)
					}
				}
				
				self.addChild(self.flag)
				self.addChild(self.questionLabel)
				
				for b in self.buttons{
					b.run(SKAction.fadeIn(withDuration: 1))
				}
				
				self.flag.run(SKAction.fadeIn(withDuration: 1))
				self.questionLabel.run(SKAction.fadeIn(withDuration: 1))
				
			}
			return
		}
		
		guard let touch = touches.first, let node = self.nodes(at: touch.location(in: self)).first else { return }
		
		switch node.name{
		case currentAnswer:
			currentIndex += 1
			if currentIndex <= 2 {
				configureRound(currentQuestion: currentIndex)
			}else{
				removeElements()
				let blackScreen = SKSpriteNode(color: .black, size: self.size)
				blackScreen.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
				
				addChild(blackScreen)
				
				
				let partOne = SKLabelNode(fontNamed: "OldNewspaperTypes")
				partOne.text = "Even if war has epic and tragic stories from our past"
				partOne.fontSize = 48
				partOne.fontColor = .white
				partOne.verticalAlignmentMode = .top
				partOne.position = CGPoint(x: self.frame.midX, y: 0.9 * self.frame.height)
				partOne.preferredMaxLayoutWidth = 600
				partOne.numberOfLines = 5
				partOne.alpha = 0
				
				let partTwo = SKLabelNode(fontNamed: "OldNewspaperTypes")
				partTwo.text = "It Still affect us nowdays, around 17 US war veterans die by their own hand daily."
				partTwo.fontSize = 48
				partTwo.fontColor = .white
				partTwo.verticalAlignmentMode = .top
				partTwo.position = CGPoint(x: self.frame.midX, y: 0.7 * self.frame.height)
				partTwo.preferredMaxLayoutWidth = 600
				partTwo.numberOfLines = 5
				partTwo.alpha = 0
				
				let partThree = SKLabelNode(fontNamed: "OldNewspaperTypes")
				partThree.text = "They gave their life for the country, and yet they can't live on it"
				partThree.fontSize = 48
				partThree.fontColor = .white
				partThree.verticalAlignmentMode = .top
				partThree.position = CGPoint(x: self.frame.midX, y: 0.4 * self.frame.height)
				partThree.preferredMaxLayoutWidth = 600
				partThree.numberOfLines = 5
				partThree.alpha = 0
				
				let partFour = SKLabelNode(fontNamed: "OldNewspaperTypes")
				partFour.text = "You can still make a difference\n Veteran Affairs:\n 888-823-7458\n 800-273-8255\n"
				partFour.fontSize = 48
				partFour.fontColor = .white
				partFour.verticalAlignmentMode = .top
				partFour.position = CGPoint(x: self.frame.midX, y: 0.9 * self.frame.height)
				partFour.preferredMaxLayoutWidth = 600
				partFour.numberOfLines = 5
				partFour.alpha = 0
				
				let partFive = SKLabelNode(fontNamed: "OldNewspaperTypes")
				partFive.text = """
“I spoke to God today and she said that she's ashamed
What have I become
What have I done
 I spoke to the devil today and he swears he's not to blame
 And I understood 'cause I feel the same
-Five finger death punch, Wrong side of heaven
"""
				partFive.fontSize = 48
				partFive.fontColor = .white
				partFive.verticalAlignmentMode = .top
				partFive.position = CGPoint(x: self.frame.midX, y: 0.8 * self.frame.height)
				partFive.preferredMaxLayoutWidth = 600
				partFive.numberOfLines = 5
				partFive.alpha = 0
				
				let Credits = SKLabelNode(fontNamed: "OldNewspaperTypes")
				Credits.text = """
Historical Fonts:
Milunka Savić:
 https://en.wikipedia.org/wiki/Milunka_Savi%C4%87
 https://aventurasnahistoria.uol.com.br/noticias/reportagem/do-triunfo-ao-esquecimento-a-intensa-saga-e-milunka-savic-a-combatente-da-primeira-guerra-mundial.phtml ( localized in Brazilian-Portuguese)
 https://www.inyourpocket.com/belgrade/serbias-real-life-mulan-the-story-of-milunka-savic_75533f

Attack Of The Dead Man:
 https://en.wikipedia.org/wiki/Attack_of_the_Dead_Men
 https://www.warhistoryonline.com/war-articles/dead.html?edg-c=1

The Battle of Verdun:
 https://www.iwm.org.uk/history/what-was-the-battle-of-verdun
 https://en.wikipedia.org/wiki/Battle_of_Verdun

Stormtroopers:
 https://en.wikipedia.org/wiki/Stormtroopers_(Imperial_Germany)
 https://encyclopedia.1914-1918-online.net/article/stormtrooper

Christmas Truce:
 https://www.history.com/topics/world-war-i/christmas-truce-of-1914
 https://en.wikipedia.org/wiki/Christmas_truce

Night Witches:
 https://www.history.com/news/meet-the-night-witches-the-daring-female-pilots-who-bombed-nazis-by-night
 https://www.wrightmuseum.org/2020/10/01/the-soviet-night-witches/

Data Fonts:
Suicide Numbers:
 https://www.mentalhealth.va.gov/suicide_prevention/data.asp
 https://www.hudexchange.info/resource/5772/2018-pit-estimate-of-veteran-homelessness-in-the-us/

Hotlines:
 https://uwc.211ct.org/veterans-hotline-800273-talk/
 https://www.va.gov/health-care/health-needs-conditions/mental-health/suicide-prevention/#:~:text=Call%20800%2D273%2D8255%2C,%3A%20800%2D799%2D4889.
 https://www.veteranscrisisline.net/
"""
				Credits.fontSize = 18
				Credits.fontColor = .white
				Credits.verticalAlignmentMode = .top
				Credits.position = CGPoint(x: self.frame.midX, y: 0.95 * self.frame.height)
				Credits.preferredMaxLayoutWidth = 600
				Credits.numberOfLines = 5
				Credits.alpha = 0
				
				
				
				let fadeIn = SKAction.fadeIn(withDuration: 1)
				let wait = SKAction.wait(forDuration: 8)
				let fadeOut = SKAction.fadeOut(withDuration: 1)
				let sequence = SKAction.sequence([fadeIn,wait,fadeOut])
				
				self.addChild(partOne)
				partOne.run(sequence){
					partOne.removeFromParent()
					self.addChild(partTwo)
					
					partTwo.run(sequence){
						partTwo.removeFromParent()
						self.addChild(partThree)
						
						partThree.run(sequence){
							partThree.removeFromParent()
							self.addChild(partFour)
							
							partFour.run(sequence){
								partFour.removeFromParent()
								self.addChild(partFive)
								
								partFive.run(sequence){
									partFive.removeFromParent()
									self.addChild(Credits)
									Credits.run(sequence)
								}
							}
						}
					}
				}
				
				
				
			}
			
		case "WrongNode":
			removeElements()
			
			jornal = Jornal(textContent: currentRound[currentIndex].text, subjectContent: currentRound[currentIndex].subject, size: CGSize(width: 0.9 * self.frame.width, height: 0.9 * self.frame.height))
			jornal.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
			self.addChild(jornal)
			
		case "Retry":
			jornal.removeFromParent()
			currentIndex = 0
			newRound()
			configureRound(currentQuestion: 0)
			
			self.addChild(tapToPlay)
			tapToPlay.run(SKAction.fadeIn(withDuration: 0.2))
			
			
		default:
			return
		}
		
	}
	
	public func newRound(){
		currentRound = []
		let (a,b,c) = model.getRandomRound()
		currentRound.append(a)
		currentRound.append(b)
		currentRound.append(c)
		
	}
	
	
	public func configureRound(currentQuestion index: Int){
		questionLabel.text = currentRound[index].question
		let (one,two,three, four) = randomizeButtons()
		buttons[one].updateContent(newName: currentRound[index].correctAnswer, newLabel: currentRound[index].correctAnswer)
		buttons[two].updateContent(newName: "WrongNode", newLabel: currentRound[index].wrongAnswers[0])
		buttons[three].updateContent(newName: "WrongNode", newLabel: currentRound[index].wrongAnswers[1])
		buttons[four].updateContent(newName: "WrongNode", newLabel: currentRound[index].wrongAnswers[2])
		currentAnswer = currentRound[index].correctAnswer
	}
	
	public func randomizeButtons() -> (a: Int,b: Int,c:Int ,d:Int){
		let a = Int.random(in: 0...3)
		var b = Int.random(in: 0...3)
		var c = Int.random(in: 0...3)
		var d = Int.random(in: 0...3)
		
		while b == a || b == c || b == d {
			b = Int.random(in: 0...3)
		}
		
		while c == a || b == c || c == d {
			c = Int.random(in: 0...3)
		}
		
		while d == a || b == d || c == d {
			d = Int.random(in: 0...3)
		}
		
		return (a:a, b:b, c:c, d:d)
		
	}
	
	
	func removeElements(){
		for b in buttons{
			b.removeFromParent()
		}
		
		flag.removeFromParent()
		questionLabel.removeFromParent()
	}
	
	
}
