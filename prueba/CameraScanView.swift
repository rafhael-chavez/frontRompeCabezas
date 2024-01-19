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
    @State private var picture = 1
    @State private var colorLetra = "white"
    
    var body: some View {
        let predictionLabel = predictionStatus.topLabel
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
                }
                /*RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350.0, height: 600.0)
                 */
                Button {
                    print("Image tapped!")
                } label: {
                    Capsule().fill(Color.accentColor).overlay(
                        HStack(alignment: .center){
                            Image("Arrow")
                            Text("regresar").foregroundColor(.secundarycolor).font(Font.varButtonLabel)
                        }
                        
                    ).frame(width: 175.0, height: 50.0)
                   
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
