//
//  Sign.swift
//  prueba
//
//  Created by Alumno on 14/01/24.
//

import Foundation

struct Sign: Identifiable{
    
    var id = UUID()
    var content: String
    var videoLink: String
    
    static func getDummyNumSigns() -> [Sign] {
            var signs = [Sign]()
            
            for i in 1...9 {
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
                    if let char = UnicodeScalar(unicodeValue)
                        ,let upper = UnicodeScalar(unicodeValue + 32){
                        let signContent = "\(char)\(upper)"
                        let videoLink = "URL\(char)"
                        let sign = Sign(content: signContent, videoLink: videoLink)
                        signs.append(sign)
                    }
                }
                
                return signs
    }
    
}
