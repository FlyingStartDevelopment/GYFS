//
//  MathStoriesViewController.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import UIKit

class MathStoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
   
    @IBOutlet var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set itself as the datasource and the delegate
       
        tableView.delegate = self
        tableView.dataSource = self
        
        //set itself as the delegate of the model
        model.delegate = self
        
        model.getVideos()
    }
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //confirm that a video was selected
        guard tableView.indexPathForSelectedRow != nil else {
            return
        }
        
        //get reference to video tapped on
        let selectedVideo = videos[tableView.indexPathForSelectedRow!.row]
        
        //get refernce to detail video controller that was tapped on
        let detailVC = segue.destination as! DetailViewController
        
        //get a reference to the detail view controller
        detailVC.video = selectedVideo
        
        //set video property of the detail view controller
        
    }
    //MARK: -Model Delegate Methods
    func videosFetched(_ videos: [Video]) {
         
        //Set the returned videos to our video property
        self.videos = videos
        //Referesh the tableview
        tableView.reloadData()
    }
    
    
        //MARK: -TableView methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as!
        MathStoriesTableViewCell
        
        //Configure the cell with the data
        let video = self.videos[indexPath.row]
        
        cell.setCell(video)
        
        //Return the cell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}

