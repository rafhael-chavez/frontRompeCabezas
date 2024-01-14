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
    
    @State var signs = Sign.getDummyABCSigns()
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 70))
        
    ]
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(.background).ignoresSafeArea()
                VStack{
                    Text("glosario de señas").font(Font.varTitleSmall).foregroundColor(.white)
                    HStack{
                        SelectedButtonOption(isSelected: $isSelected, colorButton: .accentColor, text: "Abecedario", colorText: .white).onTapGesture {
                            
                            if isSelected == false{
                                isSelected = true
                                isSelected2 = false
                                signs = Sign.getDummyABCSigns()
                            }
                            
                        }
                        SelectedButtonOption(isSelected: $isSelected2, colorButton: .accentColor, text: "Números", colorText: .white).onTapGesture {
                            
                            if isSelected2 == false{
                                isSelected2 = true
                                isSelected = false
                                signs = Sign.getDummyNumSigns()
                            }
                        }
                    }
                    
                    HStack{
                        ScrollView{
                            LazyVGrid(columns: adaptiveColumns,spacing: 20)
                            {
                                ForEach(signs) { sign in
                                    NavigationLink(destination: SignVideoView(ytLink: sign.videoLink,content: sign.content)){
                                        SignOption(content: sign.content)
                                    }
                                }
                            }
                        }
                        
                        
                        
                    }
                    
                    
                    
                }.padding()
            }
        }
    }
}



#Preview {
    GlosarioABCView()
}
