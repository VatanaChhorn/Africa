//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Vatana Chhorn on 27/12/2020.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo (fileName : String, fileFormat: String) -> AVPlayer {
    
    let videoURL =  Bundle.main.url(forResource: fileName, withExtension: fileFormat)
    
    if videoURL != nil {
        videoPlayer = AVPlayer(url: videoURL!)
        videoPlayer?.play()
    }
    
    return videoPlayer!
    
}
