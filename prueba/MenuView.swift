//
//  menuView.swift
//  prueba
//
//  Created by Alumno on 11/01/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("Background").ignoresSafeArea()
                
                VStack(){
                    HStack(alignment: .lastTextBaseline){
                        Spacer()
                        Image("LStar")
                    }
                    .frame(width: 300.0)
                    HStack(alignment: .firstTextBaseline){
                        Text("dilo").foregroundColor(Color(.white)).font(Font.varTitle)
                        Text("en").foregroundColor(Color(.white)).font(Font.custom("Chapeau-Bold",size:26))
                        Text("señas").foregroundColor(Color(.white)).font(Font.varTitle)
                    }
                    .frame(height: 80.0)
                    VStack(alignment: .leading){ 
                        Text("une en").foregroundColor(.accentColor).font(Font.varMainTitle).frame(height: 20.0)
                        Text("señas").foregroundColor(.accentColor).font(Font.varMainTitle).frame(height: 85.0)
                    }
                    VStack{
                        NavigationLink(destination: CameraScanView(labelData: Classification())){
                            Text("escanea")
                                .foregroundColor(.white)
                                .font(Font.varButtonLabel)
                                .frame(width: 300.0, height: 50.0)
                                .background(Color("Secundarycolor"))
                                .cornerRadius(100)
                            
                        }
                        
                        NavigationLink(destination: GlosarioABCView()){
                            Text("glosario")
                                .foregroundColor(.white)
                                .font(Font.varButtonLabel)
                                .frame(width: 300.0, height: 50.0)
                                .background(Color("Secundarycolor"))
                                .cornerRadius(100)
                           
                        }
                        
                        NavigationLink(destination: CreditsView()){
                            Text("créditos")
                                .foregroundColor(.white)
                                .font(Font.varButtonLabel)
                                .frame(width: 300.0, height: 50.0)
                                .background(Color("Secundarycolor"))
                                .cornerRadius(100)
                           
                        }
                    }.padding()
                    HStack(alignment: .firstTextBaseline){
                        Image("SStar")
                        Spacer()
                    }
                    .frame(width: 300.0)
                    
                    Image("Mascot").resizable().aspectRatio(contentMode: .fit).frame(width: 300.0, height: 300.0)
                }
            }.navigationTitle("Inicio").navigationBarHidden(true).navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MenuView()
}
