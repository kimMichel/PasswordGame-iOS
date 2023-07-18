//
//  ViewController.swift
//  PasswordGame
//
//  Created by Michel Jaejin Kim on 11/07/23.
//

import UIKit

class ViewController: UIViewController, ValidationManagerDelegate {

    @IBOutlet var passwordLabel: UITextField!
    @IBOutlet var table: UITableView!
    @IBOutlet var validationLabel: UILabel!
    
    var validationManager = ValidationManager()
    
    var level = 1 {
        didSet {
            title = "Level: \(level)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        validationManager.delegate = self
        
        validationManager.startGame()
    }

    func didUpdateValidationLabel(validation: String) {
        validationLabel.text = validation
    }

}

