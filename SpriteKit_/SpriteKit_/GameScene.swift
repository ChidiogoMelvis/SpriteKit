//
//  GameScene.swift
//  SpriteKit_
//
//  Created by Mac on 25/09/2023.
//

import SpriteKit

class GameScene: SKScene {
    
    var backGroundImage = SKSpriteNode(imageNamed: "background")
    
    var nodeIcon = SKSpriteNode(imageNamed: "snake")
    
    override func didMove(to view: SKView) {
       
        backGroundImage.position = CGPoint(x: 0, y: 0)
        backGroundImage.size.width = self.size.width
        backGroundImage.size.height = self.size.height
        backGroundImage.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        addChild(backGroundImage)
        backGroundImage.scene?.scaleMode = .aspectFill
        backGroundImage.zPosition = -1
        nodeIcon.zPosition = 1
        nodeIcon.color = SKColor.black
        nodeIcon.colorBlendFactor = 1.0
        nodeIcon.position = CGPoint(x: size.width * 0.0, y: size.height * 0.1)
        let iconSize = CGSize(width: 50, height: 50)
        nodeIcon.size = iconSize
        addChild(nodeIcon)
    }
    
    
}
