//
//  PasswordViewModel.swift
//  PasswordGame
//
//  Created by Michel Jaejin Kim on 25/07/23.
//

import Foundation

class PasswordViewModel {
    
    private var validationManager = ValidationManager()

    var validations = [String]()
    var level = 0 {
        didSet {
            let newValidation = validationManager.getValidationText(level: level)
            validations.insert(newValidation, at: 0)
        }
    }
    
    func getValidation(completion: @escaping () -> Void) {
        let newValidation = validationManager.getValidationText(level: level)
        validations.insert(newValidation, at: 0)
    }
    
}
