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
    ]
    
    func startGame() {
        self.delegate?.didUpdateValidationLabel(validation: validations[0])
    }
}
