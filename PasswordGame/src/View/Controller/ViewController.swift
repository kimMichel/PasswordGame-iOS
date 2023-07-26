//
//  ViewController.swift
//  PasswordGame
//
//  Created by Michel Jaejin Kim on 11/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    var validations = [
        "Minimo 6 digitios.",
        "Precisar ter 6 numeros.",
        "Pelo menos uma letra.",
        "Precisa ter pelo menos 4 numeros multiplos de dois, que a soma deles seja maior que 20 e divisivel por 5."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }

    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ValidationTableViewCell
        cell.label.text = validations[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return validations.count
    }
}
