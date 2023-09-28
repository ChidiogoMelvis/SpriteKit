//
//  GameScene.swift
//  SpriteKit_
//
//  Created by Mac on 25/09/2023.
//

import SpriteKit

class GameScene: SKScene {
    
    var backGroundImage = SKSpriteNode(imageNamed: "background")
    
    var iconNode: SKSpriteNode?
    
    var node = SKSpriteNode(imageNamed: "")
    
    var walkingFrames = SKTexture(imageNamed: "snakeIcon")
    
    public override func didMove(to view: SKView) {
        
        iconNode = SKSpriteNode(texture: walkingFrames)
        
        //MARK: - Positioning the background image
        backGroundImage.position = CGPoint(x: 0, y: 0)
        backGroundImage.size.width = self.size.width
        backGroundImage.size.height = self.size.height
        backGroundImage.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        addChild(backGroundImage)
        backGroundImage.scene?.scaleMode = .aspectFill
        backGroundImage.zPosition = -1
        
        
        //MARK: - Positioning the icon
        iconNode?.zPosition = 1
        iconNode?.color = SKColor.black
        iconNode?.colorBlendFactor = 1.0
        iconNode?.position = CGPoint(x: size.width * 0.0, y: size.height * 0.1)
        let iconSize = CGSize(width: 50, height: 50)
        iconNode?.size = iconSize
        addChild(iconNode ?? node)
        
        //MARK: - Animate the icon
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            iconNode?.position.x = (location.x)
            iconNode?.position.y = (location.y)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            iconNode?.position.x = (location.x)
            iconNode?.position.y = (location.y)
        }
    }
    
}
