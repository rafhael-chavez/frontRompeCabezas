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
    @State private var ansChosen = ""
    @State private var videoLink = "URL"
    @State private var video = "https://youtu.be/32GZ3suxRn4"
    @State private var picture = 1
    
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
                        NavigationLink(destination: ScanVideoView(ytLink: videoLink, content: ansChosen, vid: video)) {
                            Image("Camera")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                        .simultaneousGesture(
                            TapGesture()
                                .onEnded {
                                    ansChosen = predictionLabel
                                    print("button pressed")
                                    if ansChosen == "1"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    }  else if ansChosen == "2"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "3"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "4"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "5"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "6"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "7"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "8"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "9"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "10"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    }
                                }
                        )
                                /*
                                Button(action: {
                                    ansChosen = predictionLabel
                                    print("button pressed")
                                    if ansChosen == "A"{
                                        picture = 0
                                    } else if ansChosen == "B"{
                                        picture = 1
                                    } else if ansChosen == "C"{
                                        picture = 2
                                    } else if ansChosen == "D"{
                                        picture = 3
                                    } else if ansChosen == "E"{
                                        picture = 4
                                    } else if ansChosen == "F"{
                                        picture = 5
                                    } else if ansChosen == "G"{
                                        picture = 6
                                    } else if ansChosen == "H"{
                                        picture = 7
                                    } else if ansChosen == "I"{
                                        picture = 8
                                    } else if ansChosen == "J"{
                                        picture = 9
                                    } else if ansChosen == "K"{
                                        picture = 10
                                    } else if ansChosen == "L"{
                                        picture = 11
                                    } else if ansChosen == "LL"{
                                        picture = 12
                                    } else if ansChosen == "M"{
                                        picture = 13
                                    } else if ansChosen == "N"{
                                        picture = 14
                                    } else if ansChosen == "Ñ"{
                                        picture = 15
                                    } else if ansChosen == "O"{
                                        picture = 16
                                    } else if ansChosen == "P"{
                                        picture = 17
                                    } else if ansChosen == "Q"{
                                        picture = 18
                                    } else if ansChosen == "R"{
                                        picture = 19
                                    } else if ansChosen == "RR"{
                                        picture = 20
                                    } else if ansChosen == "S"{
                                        picture = 21
                                    } else if ansChosen == "T"{
                                        picture = 22
                                    } else if ansChosen == "U"{
                                        picture = 23
                                    } else if ansChosen == "V"{
                                        picture = 24
                                    } else if ansChosen == "W"{
                                        picture = 25
                                    } else if ansChosen == "X"{
                                        picture = 26
                                    } else if ansChosen == "Y"{
                                        picture = 27
                                    } else if ansChosen == "Z"{
                                        picture = 28
                                    } else if ansChosen == "1"{
                                        picture = 29
                                    } else if ansChosen == "2"{
                                        video = "https://www.youtube.com/watch?v=Wdjh81uH6FU"
                                    } else if ansChosen == "3"{
                                        picture = 31
                                    } else if ansChosen == "4"{
                                        picture = 32
                                    } else if ansChosen == "5"{
                                        picture = 33
                                    } else if ansChosen == "6"{
                                        picture = 34
                                    } else if ansChosen == "7"{
                                        picture = 35
                                    } else if ansChosen == "8"{
                                        picture = 36
                                    } else if ansChosen == "9"{
                                        picture = 37
                                    } else if ansChosen == "10"{
                                        picture = 38
                                    } else {
                                        print("UNKNOWN")
                                    }
                                }) {
                                    Image("Camera")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                    
                                }
                                .buttonStyle(.borderedProminent)
                                .tint(.yellow)
                        NavigationLink(destination: ScanVideoView(ytLink: videoLink, content: ansChosen, vid: video)) {
                            Text("video")
                                .foregroundColor(.white)
                                .font(Font.varButtonLabel)
                                .frame(width: 300.0, height: 50.0)
                                .background(Color("Secundarycolor"))
                                .cornerRadius(100)
                        }
                            */
                        
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
