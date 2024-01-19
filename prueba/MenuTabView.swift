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
                Group{
                    menuView().tabItem { Image("Home").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    }
                    CameraScanView(labelData: Classification()).tabItem {
                        Image("Camera").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    }
                    GlosarioABCView().tabItem {
                        Image("Book").renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    }
                }.toolbarBackground(Color("Secundarycolor"), for: .tabBar)            .toolbarBackground(.visible, for: .tabBar)
                
            }

        }
    }
}

#Preview {
    MenuTabView()
}
