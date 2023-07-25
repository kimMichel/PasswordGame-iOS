//
//  ValidationManager.swift
//  PasswordGame
//
//  Created by Michel Jaejin Kim on 18/07/23.
//

import Foundation

protocol ValidationManagerDelegate {
    func didUpdateValidationLabel(validation: String)
}

struct ValidationManager {
    
    var delegate: ValidationManagerDelegate?
    
    let validations = [
        "Minimo de 6 digitos.",
        "6 digitos numericos",
        "Conter pelo menos uma letra minuscula e maiuscula"
    ]
    
    func startGame() {
        self.delegate?.didUpdateValidationLabel(validation: validations[0])
    }
}
