//
//  SelectedButtonOption.swift
//  prueba
//
//  Created by Alumno on 12/01/24.
//

import SwiftUI

struct SelectedButtonOption: View {
    
    @Binding var isSelected: Bool
    @State var colorButton: Color
    @State var text: String
    @State var colorText: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8).frame(height:50).foregroundColor(isSelected ? colorButton: .accentColor.opacity(0.25))
            Text(text).foregroundColor(isSelected ? colorText: .accentColor).font(Font.varButtonLabel)
            
        }
    }
}
#Preview {
    SelectedButtonOption(isSelected: .constant(true), colorButton:.accentColor, text: "Abecedario", colorText:.white)
}
