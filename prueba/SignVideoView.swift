//
//  SignVideoView.swift
//  prueba
//
//  Created by Alumno on 14/01/24.
//

import SwiftUI
import YouTubePlayerKit
import AVKit

struct SignVideoView: View {
    var ytLink: String
    var content: String
    var leftArrowAction: () -> Void
    var rightArrowAction: () -> Void
    
    
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
                VideoPlayer(player:  AVPlayer(url: Bundle.main.url(forResource: content,
                                                                   withExtension: "mp4")!))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(15.0)
                .padding([.leading, .trailing])
            }
        }
    }
}

struct SignVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SignVideoView(ytLink: "https://youtu.be/32GZ3suxRn4", content: "1", leftArrowAction: {}, rightArrowAction: {})
    }
}
