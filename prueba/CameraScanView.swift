//
//  CameraScanView.swift
//  prueba
//
//  Created by Alumno on 11/01/24.
//
import SwiftUI

struct CameraScanView: View {
    @EnvironmentObject var predictionStatus: PredictionStatus
    @StateObject var classifierViewModel = ClassifierViewModel()
    private(set) var labelData: Classification
    //@State private var videoLink = "URL"
    //@State private var video = "https://youtu.be/32GZ3suxRn4"
    @State private var scan = "1"
    
    var body: some View {
        let predictionLabel = predictionStatus.topLabel
        NavigationView {
            ZStack{
                Color(.background).ignoresSafeArea()
                VStack{
                    GeometryReader { geo in
                        VStack(alignment: .center) {
                            LiveCameraRepresentable() {
                                predictionStatus.setLivePrediction(with: $0, label: $1, confidence: $2)
                            }
                            
                            //PredictionResultView(labelData: classifierViewModel.getPredictionData(label: predictionLabel))
                            
                        }// HStack
                        .onAppear(perform: classifierViewModel.loadJSON)
                        .frame(width: geo.size.width)
                        .offset(x: 30)
                    }
                    /*RoundedRectangle(cornerRadius: 10)
                     .frame(width: 350.0, height: 600.0)
                     */
                    VStack {
                        ShowSignView(labelData: classifierViewModel.getPredictionData(label: predictionLabel))
                        NavigationLink(destination: ScanVideoView(content: scan)) {
                            ZStack{
                                Circle()
                                    .fill(Color("AccentColor"))
                                    .frame(width: 70, height: 70)
                                Image("Camera")
                                    .resizable()
                                    .frame(width: 50, height: 50) 
                            }
                        }
                        .simultaneousGesture(
                            TapGesture()
                                .onEnded {
                                    scan = predictionLabel
                                    print("button pressed")
                                }
                        )
                    }
                }
            }
        }
    }
}

struct CameraScanViewPreviews: PreviewProvider {
    static var previews: some View {
        CameraScanView(labelData: Classification())
    }
}
/*
#Preview {
 CameraScanView()
 }
 
*/
