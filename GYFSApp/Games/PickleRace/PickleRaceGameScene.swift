//
//  PickleRaceGameScene.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import SpriteKit
import GameplayKit

class PickleRaceGameScene: SKScene {
    
    var backButton: SKSpriteNode!
    var viewController: UIViewController?
    var mathLabel: SKLabelNode!
    var bluePickle: SKSpriteNode?
    var redPickle: SKSpriteNode?
    var mathArray = ["5 - 1", "5 - 2", "5 - 3", "5 - 5", "5 - 4", "5 + 1", "4 - 1", "4 - 2", "4 - 3", "4 - 4", "4 + 1", "3 - 1", "3 - 2", "3 - 3", "3 + 0", "3 + 1", "3 + 2", "3 + 3", "2 - 1", "2 - 2", "2 + 1", "2 + 2", "2 + 3", "1 - 0", "1 - 1", "1 - 0", "1 + 1", "1 + 2", "1 + 3", "1 + 4", "6 - 1", "6 - 2", "6 - 3", "6 - 5", "6 - 4", "7 - 6", "7 - 5", "7 - 4", "7 - 2", "8 - 3", "8 - 4", "8 - 5", "8 - 6", "8 - 7", "9 - 8", "9 - 7", "9 - 6", "9 - 5", "9 - 4", "10 - 9", "10 - 8", "10 - 7", "10 - 6", "10 - 5"]
    
    var backgroundMusic: SKAction!
    private var movableNode: SKNode?
    let gameFont = "Avenir"
    
    override func didMove(to view: SKView) {
        
        let backButton = SKSpriteNode(imageNamed: "backButton")
        backButton.size = CGSize(width: 100, height: 75)
        backButton.position = CGPoint(x: -400, y: -160)
        backButton.zPosition = 1
        backButton.name = "back"
        self.addChild(backButton)
        
        
        let bluePickle = SKSpriteNode(imageNamed: "BluePickle")
        bluePickle.size = CGSize(width: 75, height: 100)
        bluePickle.position = CGPoint(x: -370, y: -40)
        bluePickle.physicsBody = SKPhysicsBody(rectangleOf: bluePickle.size)
        bluePickle.zPosition = 2
        bluePickle.physicsBody?.isDynamic = false
        bluePickle.name = "draggable"
        self.addChild(bluePickle)
        
        let redPickle = SKSpriteNode(imageNamed: "RedPickle")
        redPickle.size = CGSize(width: 75, height: 100)
        redPickle.position = CGPoint(x: -320, y: -40)
        redPickle.physicsBody = SKPhysicsBody(rectangleOf: redPickle.size)
        redPickle.zPosition = 2
        redPickle.physicsBody?.isDynamic = false
        redPickle.name = "draggable"
        self.addChild(redPickle)
        
        let card = SKSpriteNode(imageNamed: "blankCard")
        card.size = CGSize(width: 175, height: 145)
        card.position = CGPoint(x: -250, y: -145)
        card.zPosition = 2
        card.name = "card"
        addChild(card)
        
        mathLabel = SKLabelNode(fontNamed: gameFont)
        mathLabel.text = "Zoom!"
        mathLabel.position = CGPoint(x: -250, y: -160)
        mathLabel.fontSize = 50
        mathLabel.fontColor = .black
        mathLabel.zPosition = 1
        mathLabel.name = "math"
        addChild(mathLabel)
        
        let backgroundMusic = SKAction.playSoundFileNamed("Pickle Race theme.m4a", waitForCompletion: true)
        run(backgroundMusic)
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
                if node.name == "back" {
                    returnToMainMenu()
                }
            }
          
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
        
        self.movableNode = nil
        //play sound after touch
        //run(SKAction.playSoundFileNamed("Tickles.m4a", waitForCompletion: true))
        }
        
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.movableNode = nil
            }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    
}
    func returnToMainMenu(){
        viewController?.performSegue(withIdentifier: "Games Menu View Controller", sender: self)
        
    }

   
    }
