//
//  File.swift
//  WWDC
//
//  Created by Luiz José de Araújo Filho on 06/04/22.
//

import SpriteKit


public class Flag:SKSpriteNode{
	var text = SKLabelNode(fontNamed: "OldNewspaperTypes")
	
	public init(text: String, texture: String){
		let flagTexture = SKTexture(imageNamed: texture)
		
		
		super.init(texture: flagTexture, color: .clear, size: flagTexture.size())
		self.text.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
		self.text.text = text
		
		self.addChild(self.text)
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	public func updateText(newText: String){
		self.text.text = newText
	}
	
	
}

