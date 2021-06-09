//
//  AddItUpViewController.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import UIKit

class AddItUpViewController: UIViewController {
    
        @IBOutlet var logo: UIImageView!
        
        @IBOutlet var leftCard: UIImageView!
        
        @IBOutlet var rightCard: UIImageView!
        
        override func viewDidLoad() {
            super.viewDidLoad()

        }
       
        @IBAction func dealButton(_ sender: Any) {
        
        
            let leftNumber = Int.random(in: 1...10)
            let rightNumber = Int.random(in: 1...10)
            
            leftCard.image = UIImage(named: "kcard\(leftNumber)")
            rightCard.image = UIImage(named: "kcard\(rightNumber)")
        
        }
        
    }
