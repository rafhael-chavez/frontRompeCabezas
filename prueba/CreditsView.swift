//
//  CreditsView.swift
//  prueba
//
//  Created by Ivonne Reyna on 19/03/24.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        ZStack{
            Color("Background").ignoresSafeArea()
            VStack{
                Text("Créditos").font(Font.varTitleSmall).foregroundColor(.white)
                Text("Alonso Abimael Morales Reyna").foregroundColor(.accentColor).font(Font.varItemLabel)
                Text("Diego Rodríguez Dávila").foregroundColor(.accentColor).font(Font.varItemLabel)
                Text("Emiliano González Romo").foregroundColor(.accentColor).font(Font.varItemLabel)
                Text("Emiliano Lucero Leyva").foregroundColor(.accentColor).font(Font.varItemLabel)
                Text("Juan Manuel Chávez Suazo").foregroundColor(.accentColor).font(Font.varItemLabel)
            }
        }
    }
}

#Preview {
    CreditsView()
}
