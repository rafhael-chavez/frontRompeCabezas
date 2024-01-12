//
//  CameraScanView.swift
//  prueba
//
//  Created by Alumno on 11/01/24.
//

import SwiftUI

struct CameraScanView: View {
    var body: some View {
        ZStack{
            Color(.background).ignoresSafeArea()
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350.0, height: 600.0)
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

#Preview {
    CameraScanView()
}
