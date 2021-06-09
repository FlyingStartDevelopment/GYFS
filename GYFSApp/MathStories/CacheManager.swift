//
//  CacheManager.swift
//  GYFSApp
//
//  Created by Karrin Burns on 5/11/21.
//


import Foundation


class CacheManager  {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        
        //store the image data and use url as key
        cache[url] = data

}


    static func getVideoCache(_ url:String) -> Data? {

        
        //try to get data for specified url
        return cache[url]
}
    
}
