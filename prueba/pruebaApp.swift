//
//  pruebaApp.swift
//  prueba
//
//  Created by Alumno on 11/01/24.
//

import SwiftUI

@main
struct pruebaApp: App {
    
    @StateObject private var predictionStatus = PredictionStatus()
    
    var body: some Scene {
        WindowGroup {
            MenuView()
                .environmentObject(predictionStatus)
        }
    }
}
