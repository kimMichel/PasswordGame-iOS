//
//  ViewController.swift
//  PasswordGame
//
//  Created by Michel Jaejin Kim on 11/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var passwordLabel: UITextField!
    @IBOutlet var table: UITableView!
    
    var level = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Level: \(level)"
        
    }


}

