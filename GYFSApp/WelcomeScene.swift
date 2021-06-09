//
//  WelcomeScene.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/9/21.
//

import SpriteKit
import GameplayKit

class WelcomeScene: SKScene {
    
    var sayMyName: SKAction!
    
    var button: SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        let sayMyName = SKAction.playSoundFileNamed("sayMyName.m4a", waitForCompletion: true)
        run(sayMyName)
        
       
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewController(withIdentifier: "Games Menu View Controller")
        self.view!.window?.rootViewController?.present(vc, animated: true, completion: nil)
            }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }

}
