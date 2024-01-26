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
    @State private var currentIndex: Int = 0
    @State var signs: [Sign] = Sign.getDummyABCSigns()
    
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack{
                ZStack{
                    Color(.background).ignoresSafeArea()
                    VStack{
                        Text("glosario de señas").font(Font.varTitleSmall).foregroundColor(.white)
                        HStack{
                            SelectedButtonOption(isSelected: $isSelected, colorButton: .accentColor, text: "Abecedario", colorText: .white).onTapGesture {
                                
                                if !isSelected {
                                    isSelected.toggle()
                                    isSelected2.toggle()
                                    signs = Sign.getDummyABCSigns()
                                }
                                
                            }
                            SelectedButtonOption(isSelected: $isSelected2, colorButton: .accentColor, text: "Números", colorText: .white).onTapGesture {
                                
                                if !isSelected2 {
                                    isSelected2.toggle()
                                    isSelected.toggle()
                                    signs = Sign.getDummyNumSigns()
                                }
                            }
                        }
                        
                        ScrollView {
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 110))], spacing: 20) {
                                ForEach(Array(signs.enumerated()), id: \.element.id) { index, sign in
                                    NavigationLink(destination: SignVideoView(
                                        ytLink: signs[currentIndex].videoLink,
                                        content: signs[currentIndex].content,
                                        leftArrowAction: {
                                            // Mover hacia la izquierda
                                            if currentIndex > 0 {
                                                currentIndex -= 1
                                            }
                                        },
                                        rightArrowAction: {
                                            // Mover hacia la derecha
                                            if currentIndex < signs.count - 1 {
                                                currentIndex += 1
                                            }
                                        }
                                    )) {
                                        SignOption(content: sign.content)
                                    }
                                    .simultaneousGesture(TapGesture().onEnded {
                                        currentIndex = index
                                    })
                                }
                            }
                        }
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    GlosarioABCView()
}
