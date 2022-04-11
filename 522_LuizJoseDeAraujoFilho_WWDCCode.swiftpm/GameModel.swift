//
//  File.swift
//  WWDC
//
//  Created by Luiz José de Araújo Filho on 06/04/22.
//

import SpriteKit

public class GameModel{
	let data: [String:[GameData]] = ["LadyOfTheDark":
										[GameData(subject: "Lady of the Dark",
												  question: "Who was the female Serbian soldier who captured 23 Belgium soldiers?",
												  correctAnswer: "Milunka Savić",
												  wrongAnswers: ["Marina Raskova", "Marie Curie", "Joana d'Arc"],
												  text: """
		  Milunka Savic was a Serbian soldier who served in Russia during the First Balkan War. To be able to fight she disguised as her brother and got to serve without being caught for 10 mission, in the 10th mission she received a wound in her torso.
		  After the discovery that she was a woman not a man the commanding office tried to change her role to nursing, but she denied the position because she craved for fight, and was accepted back at the infantry.
		  She was known for her timing, she knew when to strike, and at some point captured 23 Bulgarian soldiers. In the end of the war she received lots of medals and high honors including French Croix de Guerre, Legion d’Honneur, the British Medal of the Most Distinguished Order of St. Michael, the Russian Cross of St. George and the Serbian Miloš Obilić medal.
		  
		  She also participated in the first world war and helped rebellious groups in the Second world war, but those are stories for another day…
		  
		  “Raise your hand
		  For the lady of the dark
		  Soldier with no will to kill
		  With a philanthropic heart (forever)
		  Break the norm
		  She's the girl in uniform
		  Fighting side by side with men
		  She will fight until the end“
																															 - Sabaton, Lady Of The Dark
"""),
										 GameData(subject: "Lady of the Dark",
												   question: "Who was the soldier disguised as a man to be able to fight in the first balkan war?",
												   correctAnswer: "Milunka Savić",
												   wrongAnswers: ["Marina Raskova", "Marie Curie", "Joana d'Arc"],
												   text: """
 Milunka Savic was a Serbian soldier who served in Russia during the First Balkan War. To be able to fight she disguised as her brother and got to serve without being caught for 10 mission, in the 10th mission she received a wound in her torso.
 After the discovery that she was a woman not a man the commanding office tried to change her role to nursing, but she denied the position because she craved for fight, and was accepted back at the infantry.
 She was known for her timing, she knew when to strike, and at some point captured 23 Bulgarian soldiers. In the end of the war she received lots of medals and high honors including French Croix de Guerre, Legion d’Honneur, the British Medal of the Most Distinguished Order of St. Michael, the Russian Cross of St. George and the Serbian Miloš Obilić medal.
 
 She also participated in the first world war and helped rebellious groups in the Second world war, but those are stories for another day…
 
 “Raise your hand
 For the lady of the dark
 Soldier with no will to kill
 With a philanthropic heart (forever)
 Break the norm
 She's the girl in uniform
 Fighting side by side with men
 She will fight until the end“
 - Sabaton, Lady Of The Dark
 """),
										],
	
									 "AttackOfTheDeadMan": [
										GameData(subject: "The Attack Of The Dead Man",
												  question: "Which event took place in Osowiec where the Germans retreat out of fear during the WW1?",
												  correctAnswer: "The Attack of the Dead Man",
												  wrongAnswers: ["Battle of Verdun", "Battle of Dorian", "Battle of Passchendaele"],
												 text:"""
During the first World War the Osowiec fort was a target of the German soldiers, after many invasions the Germans decided to use chlorine gas, this gas when combined with water inside human lungs form a powerful acid, the Russian inhaled it during the attack and started losing, their already small, numbers.
   Then the highest ranking officer alive, Vladimir Karpovich Kotlinsky, decided to gather the remaining soldiers and charge against the germans, the germans caught by surprise saw zombies, demons, horrors, you name it, for them an undead army had just arisen to fight.
   But to the Russians soldiers this action was their last breath, knowing they wouldn't survive the day so they gave everything to protect their fort and home, and they made the Germans retreat in fear,  even if sometime later the fort was conquered, this day the Russians won…

“Osowiec then and again
Attack of the dead, hundred men
Facing the lead once again
Hundred men
Charge again
Die again
And that's when the dead men are marching again“
 - Sabaton , Attack Of The Dead Man
"""),
									GameData(subject: "The Attack Of The Dead Man",
											  question: "This event is characterized by the enemy soldiers seeing undead and demons on the other side of the battlefield.",
											  correctAnswer: "The Attack of the Dead Man",
											  wrongAnswers: ["Battle of Verdun", "Battle of Dorian", "Battle of Passchendaele"],
											 text:"""
During the first World War the Osowiec fort was a target of the German soldiers, after many invasions the Germans decided to use chlorine gas, this gas when combined with water inside human lungs form a powerful acid, the Russian inhaled it during the attack and started losing, their already small, numbers.
   Then the highest ranking officer alive, Vladimir Karpovich Kotlinsky, decided to gather the remaining soldiers and charge against the germans, the germans caught by surprise saw zombies, demons, horrors, you name it, for them an undead army had just arisen to fight.
   But to the Russians soldiers this action was their last breath, knowing they wouldn't survive the day so they gave everything to protect their fort and home, and they made the Germans retreat in fear,  even if sometime later the fort was conquered, this day the Russians won…

“Osowiec then and again
Attack of the dead, hundred men
Facing the lead once again
Hundred men
Charge again
Die again
And that's when the dead men are marching again“
 - Sabaton , Attack Of The Dead Man
""")
],
									 "Battle of Verdun":[
										GameData(subject: "Battle of Verdun",
												 question: "Which battle took place in a fortress city which is one of the greatest prides of the French people?",
												 correctAnswer: "Battle of Verdun",
												 wrongAnswers: ["Attack of the Dead Man", "Battle of Dorian", "Battle of Passchendaele"],
												 text: """
	The battle of Verdun was the longest battle in the first world war, it is characterized by strong defense wall General Philippe Petain, instead of commanding the French to charge he created multiple smaller defense points that could help each other to keep the Germans at bay.
	The French were in constant rotation of troops, tactic made possible thanks to the Sacred Way, Voiee Sacree, this road connected Bar-le-duc to Verdun  and it was constantly getting shots but that didn't made the French stop it’s use.
	This battle kept going until December where the Germans had to face not only the winter but the results of the battle of Somme, crushing the idea of destroying the French army, in the end French kept it’s pride the ancient fortress of Verdun but the price was 377,000 French soldiers and 330,000 German soldiers…

“Fields of execution turned to wasteland from the grass
Thou shalt go no further it was said, "They shall not pass!"
The spirit of resistance and the madness of the war
So go ahead, face the lead, join the dead
Though you die where you lie, never asking why”
 - Sabaton, Fields of Verdun
"""),
										GameData(subject: "Battle of Verdun",
												 question: "Known as Longest battle in modern history, this event took place in France, what its name?",
												 correctAnswer: "Battle of Verdun",
												 wrongAnswers: ["Attack of the Dead Man", "Battle of Dorian", "Battle of Passchendaele"],
												 text: """
	The battle of Verdun was the longest battle in the first world war, it is characterized by strong defense wall General Philippe Petain, instead of commanding the French to charge he created multiple smaller defense points that could help each other to keep the Germans at bay.
	The French were in constant rotation of troops, tactic made possible thanks to the Sacred Way, Voiee Sacree, this road connected Bar-le-duc to Verdun  and it was constantly getting shots but that didn't made the French stop it’s use.
	This battle kept going until December where the Germans had to face not only the winter but the results of the battle of Somme, crushing the idea of destroying the French army, in the end French kept it’s pride the ancient fortress of Verdun but the price was 377,000 French soldiers and 330,000 German soldiers…

“Fields of execution turned to wasteland from the grass
Thou shalt go no further it was said, "They shall not pass!"
The spirit of resistance and the madness of the war
So go ahead, face the lead, join the dead
Though you die where you lie, never asking why”
 - Sabaton, Fields of Verdun
""")],
									 "StormTroopers":[
										GameData(subject: "Stormtroopers",
															   question: "WW1 German Troops focused on close range tactics relying in confusion and speed.",
													  correctAnswer: "StormTroopers",
													  wrongAnswers: ["Devil Dogs", "Smoking Snakes", "Night Witches"],
													  text:"""
	Stormtroopers or Sturmtruppen were German soldiers of the first world war, their role was to infiltrate the enemy trenches causing maximum confusion and damage to the enemy army, creating an opportunity for the normal infantry to retaliate and gain ground.
	To be able to destroy enemy trenches they focused on close combat, high efficient tactics and weapons, they were extremely fast and independent, when they couldn't capture a section they would close it off and let the normal infantry handle it.
	The new tactics were so effective that other countries started developing their own stormtroopers alike infantries, this German tactics were the spark that made the birth of the Blitzkrieg possible…

"Strike at zero hour
With overwhelming firepower
They're fueled by the fear in their enemies eyes
It's a shock troop infiltration
A fast and violent escalation
Out of the trenches the Stormtroopers rise!”
Sabaton, Stormtroopers

"""),
										GameData(subject: "Stormtroopers",
															   question: "Incredible speed and independence was the key for this WW1 German troops.",
													  correctAnswer: "StormTroopers",
													  wrongAnswers: ["Devil Dogs", "Smoking Snakes", "Night Witches"],
													  text:"""
	Stormtroopers or Sturmtruppen were German soldiers of the first world war, their role was to infiltrate the enemy trenches causing maximum confusion and damage to the enemy army, creating an opportunity for the normal infantry to retaliate and gain ground.
	To be able to destroy enemy trenches they focused on close combat, high efficient tactics and weapons, they were extremely fast and independent, when they couldn't capture a section they would close it off and let the normal infantry handle it.
	The new tactics were so effective that other countries started developing their own stormtroopers alike infantries, this German tactics were the spark that made the birth of the Blitzkrieg possible…

"Strike at zero hour
With overwhelming firepower
They're fueled by the fear in their enemies eyes
It's a shock troop infiltration
A fast and violent escalation
Out of the trenches the Stormtroopers rise!”
Sabaton, Stormtroopers

""")
	],
									 "ChristmasTruce":[
										GameData(subject: "Christmas Truce",
																question: "This event took place in an unlikely way, both sides of the battle dropped their weapons and band together for one night.",
													correctAnswer: "Christmas Truce",
													wrongAnswers: ["D-Day", "Yalta meeting", "VE Day"],
													text:"""
	  Christmas truce was an unofficial ceasefire during the Christmas of 1914, both German and British troops sang carols, played football,  and shared goodwill.
	 This event started by the German soldiers getting up from the trenches unarmed and saying Merry Christmas, at first the Allied troops thought it was a trap but later got up and shook hands with the enemy.
	 During this event some soldiers buried the friends who died in the battlefield, in the end the soldiers got back to their respective trenches and the battle continued, this event never repeated due to officer repression and threats…

  "And today we're all brothers
  Tonight we're all friends
  A moment of peace in a war that never ends
  Today we're all brothers
  We drink and unite
  Now Christmas has arrived and the snow turns the ground white”
  Sabaton, Christmas Truce
"""),
										GameData(subject: "Christmas Truce",
																question: "This event is characterized of showing how we can surpass the hatred of one another even during the war.",
													correctAnswer: "Christmas Truce",
													wrongAnswers: ["D-Day", "Yalta meeting", "VE Day"],
													text:"""
	  Christmas truce was an unofficial ceasefire during the Christmas of 1914, both German and British troops sang carols, played football,  and shared goodwill.
	 This event started by the German soldiers getting up from the trenches unarmed and saying Merry Christmas, at first the Allied troops thought it was a trap but later got up and shook hands with the enemy.
	 During this event some soldiers buried the friends who died in the battlefield, in the end the soldiers got back to their respective trenches and the battle continued, this event never repeated due to officer repression and threats…

  "And today we're all brothers
  Tonight we're all friends
  A moment of peace in a war that never ends
  Today we're all brothers
  We drink and unite
  Now Christmas has arrived and the snow turns the ground white”
  Sabaton, Christmas Truce
""")],
									 "Night Witches":[
										GameData(subject: "Night Witches",
																question: "588th Night Bomber regiment also known as _________ the German troops feared them.",
													correctAnswer: "Night Witches",
													wrongAnswers: ["Devil Dogs", "Smoking Snakes", "The Red Baron"],
													text:"""
	The 588th Night bomber regiment or simply night witches, nickname given by the Germans, this regiment faced many challenges including: lack of funding and equipment, received training of years in a couple of months, skepticism and harassment.
	Even against the odds they managed to deploy 23000 tons of bombs in the nazi army, their tactics consisted on sending the first group to call the attention of the nazi soldiers then the second one would come with the plane turned off, gliding, to drop the bombs and go away to refuel and rearm.
	They fought on more than 30.000 missions, being one of the best, even with this victory record they were left out on the victory day parade due to the speed of the planes and the regiment was disbanded 6 months after the war had finished…

"Foes are losing ground, retreating to the sound
Death is in the air
Suddenly appears, confirming all your fears
Strike from witches lair
Target found, come around, barrels sound
From the battleground (axis aiming high)
Rodina awaits, defeat them at the gates
Live to fight and fly”
Sabaton, Night Witches
"""),
										GameData(subject: "Night Witches",
																question: "Female Russian bomber unit known for its stealth tactics against the nazi soldiers during the night",
													correctAnswer: "Night Witches",
													wrongAnswers: ["Devil Dogs", "Smoking Snakes", "The Red Baron"],
													text:"""
	The 588th Night bomber regiment or simply night witches, nickname given by the Germans, this regiment faced many challenges including: lack of funding and equipment, received training of years in a couple of months, skepticism and harassment.
	Even against the odds they managed to deploy 23000 tons of bombs in the nazi army, their tactics consisted on sending the first group to call the attention of the nazi soldiers then the second one would come with the plane turned off, gliding, to drop the bombs and go away to refuel and rearm.
	They fought on more than 30.000 missions, being one of the best, even with this victory record they were left out on the victory day parade due to the speed of the planes and the regiment was disbanded 6 months after the war had finished…

"Foes are losing ground, retreating to the sound
Death is in the air
Suddenly appears, confirming all your fears
Strike from witches lair
Target found, come around, barrels sound
From the battleground (axis aiming high)
Rodina awaits, defeat them at the gates
Live to fight and fly”
Sabaton, Night Witches
""")]
	
	
	
	]
	
	
	
	
	public func getRandomRound() -> (Q1: GameData, Q2: GameData, Q3: GameData){
		let q1 = data.keys.randomElement()
		var q2 = data.keys.randomElement()
		var q3 = data.keys.randomElement()
		
		while q2 == q1 || q2 == q3{
			q2 = data.keys.randomElement()
		}
		
		while q3 == q1 || q3 == q2{
			q3 = data.keys.randomElement()
		}
		
		
		let Q1 = data[q1!]!.randomElement()!
		let Q2 = data[q2!]!.randomElement()!
		let Q3 = data[q3!]!.randomElement()!
		
		return (Q1: Q1, Q2: Q2, Q3: Q3)
	}
	
}





public class GameData{
	let subject: String
	let question:String
	let correctAnswer:String
	let wrongAnswers: [String]
	let text: String

	public init(subject: String, question: String, correctAnswer:String, wrongAnswers: [String], text: String){
		self.subject = subject
		self.question = question
		self.correctAnswer = correctAnswer
		self.wrongAnswers = wrongAnswers
		self.text = text
	}
	
	
	
	
}


