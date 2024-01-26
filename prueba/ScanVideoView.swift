//
//  SignVideoView.swift
//  prueba
//
//  Created by Alumno on 14/01/24.
//

import SwiftUI
import YouTubePlayerKit

struct ScanVideoView: View {
    var ytLink: String
    var content: String
    var vid: String
    let configuration = YouTubePlayer.Configuration(
        // Define which fullscreen mode should be used (system or web)
        fullscreenMode: .system,
        // Enable auto play
        autoPlay: true,
        // Hide controls
        showControls: true,
        showFullscreenButton: true,
        loopEnabled: true,
        useModestBranding: true,
        showRelatedVideos: false
        
    )
    
    var body: some View {
        
            ZStack{
                Color(.background).ignoresSafeArea()
                VStack{
                    /*RoundedRectangle(cornerRadius: 10)
                     .frame(width: 350.0, height: 600.0)*/
                    Text(content).font(Font.varTitle).foregroundColor(.white)
                    YouTubePlayerView(
                        YouTubePlayer(
                            source: .url(vid),
                            configuration: configuration
                        )
                    ).frame(height: 560)
                        .cornerRadius(10.0)
                        .padding([.leading, .trailing])
                    /*NavigationLink(destination: GlosarioABCView()){
                        Capsule().fill(Color.accentColor).overlay(
                            HStack(alignment: .center){
                                Image("Arrow")
                                Text("regresar").foregroundColor(.secundarycolor).font(Font.varButtonLabel)
                            }
                            
                        ).frame(width: 175.0, height: 50.0)
                    }*/
                    
                    
                }
            }
        
    }
}

#Preview {
    ScanVideoView(ytLink: "URL", content: "Aa", vid: "https://youtu.be/32GZ3suxRn4")
}
