//
//  SpriteHomeViewController.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/9/21.
//

import UIKit
import SpriteKit
import GameplayKit

class SpriteHomeViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "WelcomeScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFit
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = false
            view.showsNodeCount = false
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .all
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
        

}
