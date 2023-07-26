//
//  ValidationManager.swift
//  PasswordGame
//
//  Created by Michel Jaejin Kim on 25/07/23.
//

import Foundation

class ValidationManager {
    
    let validations = [
        Validation(title: "Minimo 6 digitos."),
        Validation(title: "Minimo 6 digitos numericos."),
        Validation(title: "Minimo 1 letra minuscula."),
        Validation(title: "Minimo 1 letra maiuscula."),
    ]
    
    func getValidationText(level: Int) -> String {
        return validations[level].title
    }
}
