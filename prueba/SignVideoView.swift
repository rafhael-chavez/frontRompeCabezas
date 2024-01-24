//
//  SignVideoView.swift
//  prueba
//
//  Created by Alumno on 14/01/24.
//

import SwiftUI
import YouTubePlayerKit

struct SignVideoView: View {
    var ytLink: String
    var content: String
    var leftArrowAction: () -> Void
    var rightArrowAction: () -> Void
    let configuration = YouTubePlayer.Configuration(
        fullscreenMode: .system,
        autoPlay: false,
        showControls: true,
        showFullscreenButton: true,
        loopEnabled: true,
        useModestBranding: true,
        showRelatedVideos: false
    )
    
    var body: some View {
        ZStack {
            Color(.background).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    ArrowButton(direction: "left", action: leftArrowAction)
                    
                    Spacer()
                    
                    Text(content)
                        .font(Font.varTitle)
                        .foregroundColor(.white)
                        .lineLimit(2)
                    
                    Spacer()
                    
                    ArrowButton(direction: "right", action: rightArrowAction)
                }
                .padding()
                
                YouTubePlayerView(
                    YouTubePlayer(
                        source: .url(ytLink),
                        configuration: configuration
                    )
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(15.0)
                .padding([.leading, .trailing])
            }
        }
    }
}

struct SignVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SignVideoView(ytLink: "https://youtu.be/32GZ3suxRn4", content: "A", leftArrowAction: {}, rightArrowAction: {})
    }
}
