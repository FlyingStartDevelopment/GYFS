//
//  PizzaPartyViewController.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import UIKit
import SpriteKit
import GameplayKit

class PizzaPartyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            
            if let scene = SKScene(fileNamed: "PizzaPartyGameScene") {
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
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        
            if UIDevice.current.userInterfaceIdiom == .phone {
                return .landscapeRight
            } else {
                return .landscapeRight
            }
        }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

