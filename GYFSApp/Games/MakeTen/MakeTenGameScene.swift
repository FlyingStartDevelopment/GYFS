//
//  MakeTenGameScene.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import SpriteKit
import GameplayKit

class MakeTenGameScene: SKScene {
    
    private var movableNode: SKNode?
    var dealButton: SKSpriteNode!
    
    
    var cardArray = [SKTexture(imageNamed: "card0"), SKTexture(imageNamed: "card1"), SKTexture(imageNamed: "card2"), SKTexture(imageNamed: "card3"), SKTexture(imageNamed: "card4"), SKTexture(imageNamed: "card5"), SKTexture(imageNamed: "card6"), SKTexture(imageNamed: "card7"), SKTexture(imageNamed: "card8"), SKTexture(imageNamed: "card9"), SKTexture(imageNamed: "card10")]
   
    override func didMove(to view: SKView) {
        
        
        let background = SKSpriteNode(imageNamed: "WhiteBackground")
        background.position = CGPoint(x: 0.5, y: 0.5)
        background.size = CGSize(width: 1024, height: 768)
        background.zPosition = -2
        addChild(background)
        
        let logo = SKSpriteNode(imageNamed: "Make10Logo")
        logo.position = CGPoint(x: 0.5, y: 120)
        logo.size = CGSize(width: 175, height: 150)
        logo.zPosition = 1
        addChild(logo)
        
        let card = SKSpriteNode()
        card.texture = cardArray.randomElement()
        card.physicsBody = SKPhysicsBody(rectangleOf: card.size)
        card.physicsBody?.isDynamic = false
        card.size = CGSize(width: 390, height: 410)
        card.position = CGPoint(x: 0, y: 0)
        card.zPosition = 1
        addChild(card)
        
        let dealButton = SKSpriteNode(imageNamed: "dealButton")
        dealButton.size = CGSize(width: 200, height: 150)
        dealButton.position = CGPoint(x: 0, y: -115)
        dealButton.zPosition = 1
        dealButton.physicsBody = SKPhysicsBody(rectangleOf: dealButton.size)
        dealButton.physicsBody?.isDynamic = false
        dealButton.name = "button"
        addChild(dealButton)
        
        let dot1 = SKSpriteNode(imageNamed: "redDot")
        dot1.size = CGSize(width: 55, height: 55)
        dot1.name = "draggable"
        dot1.position = CGPoint(x: -275, y: 60)
        dot1.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot1.physicsBody?.isDynamic = false
        dot1.zPosition = 2
        addChild(dot1)
        
        let dot2 = SKSpriteNode(imageNamed: "redDot")
        dot2.size = CGSize(width: 55, height: 55)
        dot2.name = "draggable"
        dot2.position = CGPoint(x: -275, y: 60)
        dot2.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot2.physicsBody?.isDynamic = false
        dot2.zPosition = 2
        addChild(dot2)

        let dot3 = SKSpriteNode(imageNamed: "redDot")
        dot3.size = CGSize(width: 55, height: 55)
        dot3.name = "draggable"
        dot3.position = CGPoint(x: -275, y: 60)
        dot3.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot3.physicsBody?.isDynamic = false
        dot3.zPosition = 2
        addChild(dot3)

        let dot4 = SKSpriteNode(imageNamed: "redDot")
        dot4.size = CGSize(width: 55, height: 55)
        dot4.name = "draggable"
        dot4.position = CGPoint(x: -275, y: 60)
        dot4.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot4.physicsBody?.isDynamic = false
        dot4.zPosition = 2
        addChild(dot4)
        
        let dot5 = SKSpriteNode(imageNamed: "redDot")
        dot5.size = CGSize(width: 55, height: 55)
        dot5.name = "draggable"
        dot5.position = CGPoint(x: -275, y: 60)
        dot5.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot5.physicsBody?.isDynamic = false
        dot5.zPosition = 2
        addChild(dot5)

        let dot6 = SKSpriteNode(imageNamed: "redDot")
        dot6.size = CGSize(width: 55, height: 55)
        dot6.name = "draggable"
        dot6.position = CGPoint(x: -275, y: 60)
        dot6.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot6.physicsBody?.isDynamic = false
        dot6.zPosition = 2
        addChild(dot6)
        
        let dot7 = SKSpriteNode(imageNamed: "redDot")
        dot7.size = CGSize(width: 55, height: 55)
        dot7.name = "draggable"
        dot7.position = CGPoint(x: -275, y: 60)
        dot7.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot7.physicsBody?.isDynamic = false
        dot7.zPosition = 2
        addChild(dot7)

        let dot8 = SKSpriteNode(imageNamed: "redDot")
        dot8.size = CGSize(width: 55, height: 55)
        dot8.name = "draggable"
        dot8.position = CGPoint(x: -275, y: 60)
        dot8.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot8.physicsBody?.isDynamic = false
        dot8.zPosition = 2
        addChild(dot8)

        let dot9 = SKSpriteNode(imageNamed: "redDot")
        dot9.size = CGSize(width: 55, height: 55)
        dot9.name = "draggable"
        dot9.position = CGPoint(x: -275, y: 60)
        dot9.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot9.physicsBody?.isDynamic = false
        dot9.zPosition = 2
        addChild(dot9)
        
        let dot10 = SKSpriteNode(imageNamed: "redDot")
        dot10.size = CGSize(width: 55, height: 55)
        dot10.name = "draggable"
        dot10.position = CGPoint(x: -275, y: 60)
        dot10.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot10.physicsBody?.isDynamic = false
        dot10.zPosition = 2
        addChild(dot10)
        
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           
            if let touch = touches.first {
                       let location = touch.location(in: self)
                       
                       let touchedNodes = self.nodes(at: location)
                        for node in touchedNodes.reversed() {
                            if node.name == "draggable" {
                                self.movableNode = node
                
                            }
                            else {
                                if node.name == "button" {
                                    
                                    let restartScene = MakeTenGameScene()
                                    restartScene.size = self.size
                                    restartScene.scaleMode = .aspectFit
                                    restartScene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
                                    
                                    self.view?.presentScene(restartScene)
                                    
                                }
     }
    }
                
    }
        
}


        override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
           
            if let touch = touches.first, let node = self.movableNode {
                        let touchLocation = touch.location(in: self)
                        node.position = touchLocation
        }
        }
        override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            self.movableNode = nil
            
                }
        
        override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            self.movableNode = nil
            
        }

        override func update(_ currentTime: TimeInterval) {
            // Called before each frame is rendered
        }
    
        
    
    }


