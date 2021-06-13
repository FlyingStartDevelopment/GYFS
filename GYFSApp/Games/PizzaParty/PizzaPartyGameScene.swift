//
//  PizzaPartyGameScene.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import SpriteKit
import GameplayKit

class PizzaPartyGameScene: SKScene {
    
    var backButton: SKSpriteNode!
    weak var viewController: UIViewController?
    var mathLabel: SKLabelNode!
    var pizza1: SKSpriteNode?
    var mathArray = ["7 + 2", "5 - 2", "5 + 6", "4 + 7", "5 + 10", "5 + 9", "4 - 1", "4 + 2", "4 + 3", "4 + 4", "4 + 1", "3 + 12", "3 + 9", "9 - 2", "3 + 0", "3 + 1", "3 + 2", "3 + 3", "6 + 10", "2 - 2", "2 + 1", "2 + 2", "2 + 3", "1 - 0", "10 + 9", "1 + 10", "1 + 12", "1 + 9", "1 + 3", "1 + 4", "6 - 1", "6 + 2", "6 - 3", "6 - 5", "6 - 4", "6 + 4", "7 + 6", "7 - 5", "7 - 4", "7 - 2", "8 - 3", "8 - 4", "8 + 5", "8 + 6", "8 - 7", "9 - 8", "9 + 7", "9 - 6", "9 + 5", "9 + 4", "10 - 9", "10 - 8", "10 - 7", "10 - 6", "10 + 10", "8 + 7", "7 + 7", "15 - 5", "6 + 6", "16 + 2", "20 - 5"]
    
    var backgroundMusic: SKAudioNode!
    private var movableNode: SKNode?
    let gameFont = "Avenir"
    
    
    
    override func didMove(to view: SKView) {
        
        let backButton = SKSpriteNode(imageNamed: "backButton")
        backButton.size = CGSize(width: 150, height: 150)
        backButton.position = CGPoint(x: -300, y: -120)
        backButton.zPosition = 1
        backButton.name = "back"
        self.addChild(backButton)
        
        
        mathLabel = SKLabelNode(fontNamed: gameFont)
        mathLabel.text = "Let's party!"
        mathLabel.position = CGPoint(x: 0, y: -140)
        mathLabel.fontSize = 40
        mathLabel.fontColor = .black
        mathLabel.zPosition = 1
        mathLabel.name = "math"
        addChild(mathLabel)
        
        let backgroundMusic = SKAudioNode(fileNamed: "Pizza Party theme.mp3")
        addChild(backgroundMusic)
        
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
                    
            if touchedNodes.contains(where: { $0.name == "math"} ) {
                mathArray.shuffle()
                mathLabel.text = mathArray.randomElement()
                return
            }
            
                   for node in touchedNodes.reversed() {
                       if node.name == "draggable" {
                           self.movableNode = node
                       }
                       
                   }
                    for node in touchedNodes.reversed() {
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
        removeAction(forKey: "bm")
    
}
    }

    
