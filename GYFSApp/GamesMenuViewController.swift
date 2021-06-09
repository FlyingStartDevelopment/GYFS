//
//  GamesMenuViewController.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/15/21.
//

import UIKit

class GamesMenuViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    
    var imageNames = ["PickleRaceLogo", "PizzaPartyLogo", "RollTheDiceLogo", "Make10Logo", "addituplogo"]
    
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageNames.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! GamesCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the images in the cell
        
        cell.imageView.image = UIImage(named: imageNames[indexPath.row]) // The row value is the same as the index of the desired text within the array.
        
        // cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        //print("You selected cell #\(indexPath.item)!")
        
        
        //let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //let gameVC = mainStoryboard.instantiateViewController(withIdentifier: "GameSceneViewController") as! GameSceneViewController
        
        //self.navigationController?.pushViewController(gameVC, animated: true)
                let segue = "Segue" + String(indexPath.row)
                performSegue(withIdentifier: segue, sender:self)

            }
            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

                switch segue.identifier {
                  case "Segue0":
                    if let destVC = segue.destination as? PickleRaceViewController {
                        destVC.modalPresentationStyle = .fullScreen
                        self.present(destVC, animated: true, completion: nil)
                    }
                  case "Segue1":
                    if let destVC = segue.destination as? PizzaPartyViewController {
                       // Set the properties that need to be set in destVC
                       //destVC.property = whatever needed
                    }

                  case "Segue2":
                    if let destVC = segue.destination as? AddItUpViewController {
                       // Set the properties that need to be set in destVC
                            //destVC.property = whatever needed
                    }

                  case "Segue3":
                    if let destVC = segue.destination as? MakeTenViewController {
                       // Set the properties that need to be set in destVC
                            //destVC.property = whatever needed
                    }

                  case "Segue4":
                    if let destVC = segue.destination as? RollTheDiceViewController {
                       // Set the properties that need to be set in destVC
                            //destVC.property = whatever needed
                    }

                

                  default: break
                }

            }
    
}

