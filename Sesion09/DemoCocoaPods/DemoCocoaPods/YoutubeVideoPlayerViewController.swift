//
//  YoutubeVideoPlayerViewController.swift
//  DemoCocoaPods
//
//  Created by Kenyi Rodriguez on 10/23/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

class YoutubeVideoPlayerViewController: UIViewController {

    @IBOutlet weak var videoPlayer: YouTubePlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        self.videoPlayer.loadVideoID("2-V8kYT1pvE")
    }

    @IBAction func clickBtnPlay(_ sender: Any) {
        
        self.videoPlayer.play()
    }
}
