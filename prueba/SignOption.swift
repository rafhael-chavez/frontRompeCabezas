//
//  SignOption.swift
//  prueba
//
//  Created by Alumno on 12/01/24.
//

import SwiftUI

struct SignOption: View {
    var content: String
    var body: some View {
        ZStack{
            Button{
                
            }
        label:{
            ZStack{
                RoundedRectangle(cornerRadius: 10).aspectRatio(contentMode: .fit).foregroundColor(.secundarycolor)
                Text(content).font(Font.varMainTitle).foregroundColor(.accentColor)
            }
        }
        }
        
    }
}

#Preview {
    SignOption(content: "Aa")
}
