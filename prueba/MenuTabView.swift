//
//  MenuTabView.swift
//  prueba
//
//  Created by Alumno on 11/01/24.
//

import SwiftUI

struct MenuTabView: View {
    var body: some View {
        VStack{
            TabView{
                MenuView().tabItem { Image("Home").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                }
                CameraScanView().tabItem {
                    Image("Camera").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                }
                GlosarioABCView().tabItem {
                    Image("Book").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                }
                
            }
        }
    }
}

#Preview {
    MenuTabView()
}
