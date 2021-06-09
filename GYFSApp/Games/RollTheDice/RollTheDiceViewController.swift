//
//  RollTheDiceViewController.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/20/21.1.

import UIKit
import RealityKit

class RollTheDiceViewController: UIViewController {
    
    var diceAnchor: Dice._Dice?
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        // 1
        super.viewDidLoad()
        // 2
        diceAnchor = try! Dice.load_Dice()
        // 3
        arView.scene.anchors.append(diceAnchor!)
    }
}
