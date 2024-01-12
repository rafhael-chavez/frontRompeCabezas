//
//  GlosarioABCView.swift
//  prueba
//
//  Created by Alumno on 11/01/24.
//

import SwiftUI

struct GlosarioABCView: View {
    
    @State private var isSelected = true
    @State private var isSelected2 = false
    var body: some View {
        
        ZStack{
            Color(.background).ignoresSafeArea()
            VStack{
                Text("glosario de señas").font(Font.varTitleSmall).foregroundColor(.white)
                HStack{
                    SelectedButtonOption(isSelected: $isSelected, colorButton: .accentColor, text: "Abecedario", colorText: .white).onTapGesture {
                        
                        if isSelected == false{
                            isSelected = true
                            isSelected2 = false
                        }
                        
                    }
                    SelectedButtonOption(isSelected: $isSelected2, colorButton: .accentColor, text: "Números", colorText: .white).onTapGesture {
                        
                        if isSelected2 == false{
                            isSelected2 = true
                            isSelected = false
                        }
                    }
                }
                
                HStack{
                    SignOption(content: "Aa")
                    SignOption(content: "Bb")
                    
                    
                }
                
                
                
            }.padding()
        }
        
    }
}



#Preview {
    GlosarioABCView()
}
