//
//  NumberLineGameScene.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import SpriteKit
import GameplayKit

class NumberLineGameScene: SKScene {
    
    var numberLine: SKSpriteNode?
    
    private var movableNode: SKNode?
    
    
    override func didMove(to view: SKView) {
        
        let numberLine = SKSpriteNode(imageNamed: "NumberLineBackground")
        numberLine.size = CGSize(width: 720, height: 350)
        numberLine.zPosition = 1
        numberLine.position = CGPoint(x: 0, y: 0)
        addChild(numberLine)
        
        let circle = SKShapeNode(circleOfRadius: 10)
        circle.fillColor = .red
        circle.zPosition = 2
        circle.position = CGPoint(x: -300, y: -100)
        
        circle.name = "draggable"
        addChild(circle)
        
        let circle2 = SKShapeNode(circleOfRadius: 10)
        circle2.fillColor = .red
        circle2.zPosition = 2
        circle2.position = CGPoint(x: -300, y: -100)
        
        circle2.name = "draggable"
        addChild(circle2)
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
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame i
    }
}

