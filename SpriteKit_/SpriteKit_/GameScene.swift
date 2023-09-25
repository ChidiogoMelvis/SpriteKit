//
//  GameScene.swift
//  SpriteKit_
//
//  Created by Mac on 25/09/2023.
//

import SpriteKit

class GameScene: SKScene {
    
    var backGroundImage = SKSpriteNode(imageNamed: "background")
    
    override func didMove(to view: SKView) {
       
        backGroundImage.position = CGPoint(x: self.size.height/2, y: self.frame.width/2)
        self.addChild(backGroundImage)
    }
    
    
}
