//
//  VideoViewModel.swift
//  CoursesApp
//
//  Created by ramil on 05.07.2021.
//

import Foundation
import AVKit

final class VideoViewModel {
    private let title: String
    let player: AVPlayer
    
    var overlayTitle: String {
        title
    }
    
    init(videoName: String, title: String) {
        self.title = title
        self.player = AVPlayer(url: Bundle.main.url(forResource: videoName, withExtension: "mp4")!)
    }
}
