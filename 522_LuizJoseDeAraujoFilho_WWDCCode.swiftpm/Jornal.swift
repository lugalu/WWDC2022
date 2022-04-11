//
//  File.swift
//  WWDC
//
//  Created by Luiz José de Araújo Filho on 07/04/22.
//

import SpriteKit

public class Jornal: SKSpriteNode{
	
	init(textContent:String, subjectContent: String, size: CGSize) {
		
		super.init(texture: SKTexture(), color: .gray, size: size)
		
		let title = SKLabelNode(fontNamed: "OldNewspaperTypes")
		title.position = CGPoint(x: self.frame.midX, y: self.frame.height * 0.4 )
		title.fontColor = .black
		title.text = "YOU DIED"
		title.fontSize = 96
		self.addChild(title)
		
		let subtitle = SKLabelNode(fontNamed: "OldNewspaperTypes")
		subtitle.position = CGPoint(x: self.frame.midX, y: self.frame.height * 0.35 )
		subtitle.fontColor = .black
		subtitle.text = "There are no Second Chances in war"
		subtitle.fontSize = 20
		self.addChild(subtitle)
		
		
		let subject = SKLabelNode(fontNamed: "OldNewspaperTypes")
		subject.position = CGPoint(x: self.frame.midX, y: self.frame.height * 0.3 )
		subject.fontColor = .black
		subject.text = subjectContent
		subject.fontSize = 32
		self.addChild(subject)
		
		
		let text = SKLabelNode(fontNamed: "OldNewspaperTypes")
		text.position = CGPoint(x: self.frame.midX, y: self.frame.height * 0.29)
		text.fontColor = .black
		text.text = textContent
		text.fontSize = 20
		text.preferredMaxLayoutWidth = 600
		text.numberOfLines = 15
		text.verticalAlignmentMode = .top
		self.addChild(text)
		
		let retry = SKLabelNode(fontNamed: "OldNewspaperTypes")
		retry.position = CGPoint(x: self.frame.maxX * 0.8, y: -self.frame.height * 0.45 )
		retry.fontColor = .black
		retry.text = "Retry..."
		retry.fontSize = 32
		retry.name = "Retry"
		self.addChild(retry)
		self.name = "Retry"
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	
	
	
}


