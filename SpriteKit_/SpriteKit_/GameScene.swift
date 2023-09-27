//
//  GameScene.swift
//  SpriteKit_
//
//  Created by Mac on 25/09/2023.
//

import SpriteKit

class GameScene: SKScene {
    
    var backGroundImage = SKSpriteNode(imageNamed: "background")
    
    var nodeIcon: SKSpriteNode?
    
    var node = SKSpriteNode(imageNamed: "")
    
    var walkingFrames = SKTexture(imageNamed: "snake")
    
   public override func didMove(to view: SKView) {
        
       nodeIcon = SKSpriteNode(texture: walkingFrames)
        
       //MARK: - Positioning the background image
        backGroundImage.position = CGPoint(x: 0, y: 0)
        backGroundImage.size.width = self.size.width
        backGroundImage.size.height = self.size.height
        backGroundImage.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        addChild(backGroundImage)
        backGroundImage.scene?.scaleMode = .aspectFill
        backGroundImage.zPosition = -1
        
        
        //MARK: - Positioning the icon
       nodeIcon?.zPosition = 1
       nodeIcon?.color = SKColor.black
        nodeIcon?.colorBlendFactor = 1.0
        nodeIcon?.position = CGPoint(x: size.width * 0.0, y: size.height * 0.1)
        let iconSize = CGSize(width: 50, height: 50)
        nodeIcon?.size = iconSize
       addChild(nodeIcon ?? node)
        
       //MARK: - Animate the icon
        animateSnake()
    }
    
    func animateSnake() {
        let animateFrames = [walkingFrames]
        let walkingAnimation = SKAction.animate(with: animateFrames, timePerFrame: 0.1)
        let repeatAction = SKAction.repeatForever(walkingAnimation)
        nodeIcon?.run(repeatAction, withKey: "walking")
        nodeIcon?.removeAction(forKey: "walking")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            nodeIcon?.position.x = (location.x)
            nodeIcon?.position.y = (location.y)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            nodeIcon?.position.x = (location.x)
            nodeIcon?.position.y = (location.y)
        }
    }
    
//    override func update(_ currentTime: TimeInterval) {
//        super.update(currentTime)
//    }
    
}
