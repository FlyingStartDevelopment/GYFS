//
//  TenFramesGameScene.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import SpriteKit
import GameplayKit

class TenFramesGameScene: SKScene {
    
    weak var viewController: UIViewController?
    var tenFrame: SKSpriteNode?
    var dot:SKSpriteNode?
    private var movableNode: SKNode?
    
    
    override func didMove(to view: SKView) {
        
        let backButton = SKSpriteNode(imageNamed: "backButton")
        backButton.size = CGSize(width: 160, height: 160)
        backButton.position = CGPoint(x: -300, y: -120)
        backButton.zPosition = 1
        backButton.name = "back"
        self.addChild(backButton)
        
        let tenFrameTop = SKSpriteNode(imageNamed: "tenFrame")
        tenFrameTop.size = CGSize(width: 400, height: 200)
        tenFrameTop.position = CGPoint(x: 0, y: 80)
        tenFrameTop.zPosition = 0
        addChild(tenFrameTop)
        
        let tenFrameBottom = SKSpriteNode(imageNamed: "tenFrame")
        tenFrameBottom.size = CGSize(width: 400, height: 200)
        tenFrameBottom.position = CGPoint(x: 0, y: -100)
        tenFrameBottom.zPosition = 0
        addChild(tenFrameBottom)
        
        let dot1 = SKSpriteNode(imageNamed: "dot")
        dot1.size = CGSize(width: 70, height: 70)
        dot1.name = "draggable"
        dot1.position = CGPoint(x: 275, y: 70)
        dot1.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot1.physicsBody?.isDynamic = false
        addChild(dot1)
        
        let dot2 = SKSpriteNode(imageNamed: "dot")
        dot2.size = CGSize(width: 70, height: 70)
        dot2.name = "draggable"
        dot2.position = CGPoint(x: 275, y: 70)
        dot2.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot2.physicsBody?.isDynamic = false
        addChild(dot2)

        let dot3 = SKSpriteNode(imageNamed: "dot")
        dot3.size = CGSize(width: 70, height: 70)
        dot3.name = "draggable"
        dot3.position = CGPoint(x: 275, y: 70)
        dot3.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot3.physicsBody?.isDynamic = false
        addChild(dot3)

        let dot4 = SKSpriteNode(imageNamed: "dot")
        dot4.size = CGSize(width: 70, height: 70)
        dot4.name = "draggable"
        dot4.position = CGPoint(x: 275, y: 70)
        dot4.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot4.physicsBody?.isDynamic = false
        addChild(dot4)
        
        let dot5 = SKSpriteNode(imageNamed: "dot")
        dot5.size = CGSize(width: 70, height: 70)
        dot5.name = "draggable"
        dot5.position = CGPoint(x: 275, y: 70)
        dot5.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot5.physicsBody?.isDynamic = false
        addChild(dot5)

        let dot6 = SKSpriteNode(imageNamed: "dot")
        dot6.size = CGSize(width: 70, height: 70)
        dot6.name = "draggable"
        dot6.position = CGPoint(x: 275, y: 70)
        dot6.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot6.physicsBody?.isDynamic = false
        addChild(dot6)
        
        let dot7 = SKSpriteNode(imageNamed: "dot")
        dot7.size = CGSize(width: 70, height: 70)
        dot7.name = "draggable"
        dot7.position = CGPoint(x: 275, y: 70)
        dot7.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot7.physicsBody?.isDynamic = false
        addChild(dot7)

        let dot8 = SKSpriteNode(imageNamed: "dot")
        dot8.size = CGSize(width: 70, height: 70)
        dot8.name = "draggable"
        dot8.position = CGPoint(x: 275, y: 70)
        dot8.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot8.physicsBody?.isDynamic = false
        addChild(dot8)

        let dot9 = SKSpriteNode(imageNamed: "dot")
        dot9.size = CGSize(width: 70, height: 70)
        dot9.name = "draggable"
        dot9.position = CGPoint(x: 275, y: 70)
        dot9.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot9.physicsBody?.isDynamic = false
        addChild(dot9)
        
        let dot10 = SKSpriteNode(imageNamed: "dot")
        dot10.size = CGSize(width: 70, height: 70)
        dot10.name = "draggable"
        dot10.position = CGPoint(x: 275, y: 70)
        dot10.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot10.physicsBody?.isDynamic = false
        addChild(dot10)
        
        let dot11 = SKSpriteNode(imageNamed: "redDot")
        dot11.size = CGSize(width: 60, height: 60)
        dot11.name = "draggable"
        dot11.zPosition = 2
        dot11.position = CGPoint(x: 275, y: -100)
        dot11.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot11.physicsBody?.isDynamic = false
        addChild(dot11)
        
        let dot12 = SKSpriteNode(imageNamed: "redDot")
        dot12.size = CGSize(width: 60, height: 60)
        dot12.name = "draggable"
        dot12.zPosition = 2
        dot12.position = CGPoint(x: 275, y: -100)
        dot12.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot12.physicsBody?.isDynamic = false
        addChild(dot12)

        let dot13 = SKSpriteNode(imageNamed: "redDot")
        dot13.size = CGSize(width: 60, height: 60)
        dot13.name = "draggable"
        dot13.zPosition = 2
        dot13.position = CGPoint(x: 275, y: -100)
        dot13.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot13.physicsBody?.isDynamic = false
        addChild(dot13)

        let dot14 = SKSpriteNode(imageNamed: "redDot")
        dot14.size = CGSize(width: 60, height: 60)
        dot14.name = "draggable"
        dot14.zPosition = 2
        dot14.position = CGPoint(x: 275, y: -100)
        dot14.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot14.physicsBody?.isDynamic = false
        addChild(dot14)
        
        let dot15 = SKSpriteNode(imageNamed: "redDot")
        dot15.size = CGSize(width: 60, height: 60)
        dot15.name = "draggable"
        dot15.zPosition = 2
        dot15.position = CGPoint(x: 275, y: -100)
        dot15.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot15.physicsBody?.isDynamic = false
        addChild(dot15)

        let dot16 = SKSpriteNode(imageNamed: "redDot")
        dot16.size = CGSize(width: 60, height: 60)
        dot16.name = "draggable"
        dot16.zPosition = 2
        dot16.position = CGPoint(x: 275, y: -100)
        dot16.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot16.physicsBody?.isDynamic = false
        addChild(dot16)
        
        let dot17 = SKSpriteNode(imageNamed: "redDot")
        dot17.size = CGSize(width: 60, height: 60)
        dot17.name = "draggable"
        dot17.zPosition = 2
        dot17.position = CGPoint(x: 275, y: -100)
        dot17.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot17.physicsBody?.isDynamic = false
        addChild(dot17)

        let dot18 = SKSpriteNode(imageNamed: "redDot")
        dot18.size = CGSize(width: 60, height: 60)
        dot18.name = "draggable"
        dot18.zPosition = 2
        dot18.position = CGPoint(x: 275, y: -100)
        dot18.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot18.physicsBody?.isDynamic = false
        addChild(dot18)

        let dot19 = SKSpriteNode(imageNamed: "redDot")
        dot19.size = CGSize(width: 60, height: 60)
        dot19.name = "draggable"
        dot19.zPosition = 2
        dot19.position = CGPoint(x: 275, y: -100)
        dot19.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot19.physicsBody?.isDynamic = false
        addChild(dot19)
        
        let dot20 = SKSpriteNode(imageNamed: "redDot")
        dot20.size = CGSize(width: 60, height: 60)
        dot20.name = "draggable"
        dot20.zPosition = 2
        dot20.position = CGPoint(x: 275, y: -100)
        dot20.physicsBody = SKPhysicsBody(rectangleOf: dot1.size)
        dot20.physicsBody?.isDynamic = false
        addChild(dot20)

    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
       
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        if let touch = touches.first {
                   let location = touch.location(in: self)
                   
                   let touchedNodes = self.nodes(at: location)
                    for node in touchedNodes.reversed() {
                        if node.name == "draggable" {
                            self.movableNode = node
                
                
            }
                        if node.name == "back" {
                            returnToMainMenu()
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
    
    func returnToMainMenu(){
        viewController?.dismiss(animated: true, completion: nil)
    
}
}
