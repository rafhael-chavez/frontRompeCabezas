//
//  Sign.swift
//  prueba
//
//  Created by Alumno on 14/01/24.
//

import Foundation

struct Sign: Identifiable {
    var id = UUID()
    var content: String
    var videoLink: String

    static func getDummyNumSigns() -> [Sign] {
        var signs = [Sign]()
        
        for i in 1...10 {
            let signContent = "\(i)"
            let videoLink = "URL\(i)"
            let sign = Sign(content: signContent, videoLink: videoLink)
            signs.append(sign)
        }
        
        return signs
    }

    static func getDummyABCSigns() -> [Sign] {
        var signs = [Sign]()

        for unicodeValue in 65...90 { // Valores Unicode de A a Z
            if let char = UnicodeScalar(unicodeValue) {
                let signContent = "\(char)"
                let videoLink = "URL\(char)"
                signs.append(Sign(content: signContent, videoLink: videoLink))

                // Incluir las letras especiales después de sus respectivas letras
                if char == "L" {
                    signs.append(Sign(content: "LL", videoLink: "URLL"))
                } else if char == "R" {
                    signs.append(Sign(content: "RR", videoLink: "URLRR"))
                }
            }
        }

        // Añadir Ñ después de N
        if let nIndex = signs.firstIndex(where: { $0.content.starts(with: "N") }) {
            signs.insert(Sign(content: "Ñ", videoLink: "URLÑ"), at: nIndex + 1)
        }

        return signs
    }
}
