//
//  File.swift
//  WWDC
//
//  Created by Luiz José de Araújo Filho on 06/04/22.
//

import SpriteKit

public class GameButton: SKSpriteNode{
	
	var labelContent: String
	var labelNode: SKLabelNode
	
	
	public init(name:String,labelContent:String){
		let texture = SKTexture(imageNamed: "ammoCase")
		self.labelContent = labelContent
		self.labelNode = SKLabelNode(text: labelContent)
		labelNode.fontName = "OldNewspaperTypes"
		
		super.init(texture: texture, color: .clear, size: texture.size())
		
		self.name = name
		self.labelNode.name = name
		labelNode.verticalAlignmentMode = .center
		labelNode.position = CGPoint(x: self.frame.midX ,y:self.frame.midY)
		labelNode.fontColor = .yellow
		self.addChild(labelNode)
	}
	
	public func updateContent(newName:String, newLabel:String){
		self.name = newName
		self.labelNode.name = newName
		self.labelNode.text = newLabel
	}
	
	required init?(coder aDecoder: NSCoder) {
		self.labelContent = "wrongNode"
		self.labelNode = SKLabelNode(text: "wrongNode")
		super.init(coder: aDecoder)
	}
	
	
}
