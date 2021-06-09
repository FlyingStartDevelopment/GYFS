//
//  DetailViewController.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

   
    @IBOutlet var titleLabel: UILabel!
    
   
    @IBOutlet var dateLabel: UILabel!
    
    
    @IBOutlet var webView: WKWebView!
    

    @IBOutlet var textView: UITextView!
    
    
    var video:Video?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //clear fields
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        //check for video
        guard video != nil else {
            return
        }
        
        //create embed URL
        let embedUrlString = Constants.YT_EMBED_URL + video!.videoId
        
        //Load it into webview
        let url = URL(string: embedUrlString)
        
        let request = URLRequest(url: url!)
        webView.load(request)
    
        //set title
        titleLabel.text = video!.title
        
        //set date
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        dateLabel.text = df.string(from: video!.published)
        
        //set description
        
        textView.text = video!.description
        
    }
    

}
