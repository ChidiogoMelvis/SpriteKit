//
//  GameScene.swift
//  SpriteKit_
//
//  Created by Mac on 25/09/2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        
        backgroundColor = .brown
        
        let icon = SKSpriteNode(imageNamed: "icon")
        icon.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(icon)
        
        
        let circlePath = UIBezierPath(ovalIn: CGRect(x: -100, y: -100, width: 200, height: 200))
        let followPath = SKAction.follow(circlePath.cgPath, asOffset: false, orientToPath: false, speed: 100)
        let repeatForever = SKAction.repeatForever(followPath)
        icon.run(repeatForever)
    }
    
    
}
