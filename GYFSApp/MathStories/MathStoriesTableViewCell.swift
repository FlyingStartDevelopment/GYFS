//
//  MathStoriesTableViewCell.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import UIKit

class MathStoriesTableViewCell: UITableViewCell {
    
    
    @IBOutlet var thumbnailimageView: UIImageView!
    
    
    @IBOutlet var titleLabel: UILabel!
    
    
    @IBOutlet var dateLabel: UILabel!
    
    var video:Video?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(_ v:Video) {
        
        self.video = v

        //Ensure that we have a video
        guard self.video != nil else {
                       return
               }
        
                
        //Set the title label
        self.titleLabel.text = video?.title
        
        // Set the date label
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        self.dateLabel.text = df.string(from: video!.published)
        
        //Set the thumbnail
        guard self.video!.thumbnail != "" else {
            return
        }
        
        //check cache before downloading data
        if let cachedData =
            CacheManager.getVideoCache(self.video!.thumbnail) {
            
            //set thumbnail
            self.thumbnailimageView.image = UIImage(data: cachedData)
            return
        }
        
        //Download the thumbnail data
        let url = URL(string: self.video!.thumbnail)
        
        //Get the shared URL session object
        let session = URLSession.shared
        
        //Create a task
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error == nil && data != nil {
                
                //save data in cache
                CacheManager.setVideoCache(url!.absoluteString, data)
                
                //Check that the downloaded url matches the video url that is set to display
                if url!.absoluteString != self.video?.thumbnail {
                    
                    //Video cell has been recycled for another video and no longer matches the thumbnail that was downloaded
                    return
                }
                
                //Create the image object
                let image = UIImage(data: data!)
                
                //Set the imageview
                DispatchQueue.main.async {
                    self.thumbnailimageView.image = image
                }
            }
            
        }
        //Start data task
        dataTask.resume()
        
    }

}
