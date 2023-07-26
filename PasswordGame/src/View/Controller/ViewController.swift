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
    
    private var viewModel = PasswordViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        passwordField.delegate = self
        viewModel.getValidation { [weak self] in
            self?.tableView.reloadData()
        }
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        let newText = (currentText as NSString).replacingCharacters(in: range, with: string)
        
        if newText.count >= 6 {
            viewModel.level += 1
            self.tableView.reloadData()
        }
        
        return true
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ValidationTableViewCell
        cell.label.text = viewModel.validations[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.validations.count
    }
}
