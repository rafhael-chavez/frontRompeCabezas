//
//  ArrowButton.swift
//  prueba
//
//  Created by Juan Chavez on 23/1/24.
//

import SwiftUI

struct ArrowButton: View {
    var direction: String // "left" o "right"
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: direction == "left" ? "arrowshape.backward.circle.fill" : "arrowshape.right.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.accentColor)
                
        }
    }
}

// Preview
struct ArrowButton_Previews: PreviewProvider {
    static var previews: some View {
        ArrowButton(direction: "left", action: {})
    }
}
