//
//  VideoView.swift
//  CoursesApp
//
//  Created by ramil on 05.07.2021.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    private let videoModel: VideoViewModel
    
    init(videoName: String, title: String) {
        videoModel = VideoViewModel(videoName: videoName, title: title)
    }
    
    var body: some View {
        VideoPlayer(player: videoModel.player) {
            Text(videoModel.overlayTitle)
                .padding(.horizontal, 20)
                .foregroundColor(.primary)
                .background(Color.secondary.opacity(0.6))
            
            Spacer()
        }.onAppear() {
            videoModel.player.play()
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(videoName: "some", title: "some")
    }
}
