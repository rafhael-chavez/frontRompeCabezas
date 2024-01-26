//
//  SignVideoView.swift
//  prueba
//
//  Created by Alumno on 14/01/24.
//

import SwiftUI
import YouTubePlayerKit
import AVKit

struct ScanVideoView: View {
    //var ytLink: String
    var content: String
    
    var body: some View {
        ZStack {
            Color(.background).edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    
                    Text(content)
                        .font(Font.varTitle)
                        .foregroundColor(.white)
                        .lineLimit(2)
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

struct ScanVideoView_Previews: PreviewProvider {
    static var previews: some View {
        ScanVideoView(content: "1")
    }
}
