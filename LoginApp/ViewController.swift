//
//  ViewController.swift
//  LoginApp
//
//  Created by shikha singh on 16/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {

        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""

        // Empty validation
        if email.isEmpty || password.isEmpty {
            showAlert(message: "Please enter email and password")
            return
        }

        // Login validation
        if email == "admin@gmail.com" && password == "1234" {
            showAlert(message: "Login Successful!")
        } else {
            showAlert(message: "Invalid email or password")
        }
    }

    // Show / Hide Password
    @IBAction func togglePasswordVisibility(_ sender: UIButton) {
        passwordTextField.isSecureTextEntry.toggle()
    }

    func showAlert(message: String) {

        let alert = UIAlertController(
            title: "Login",
            message: message,
            preferredStyle: .alert
        )

        alert.addAction(
            UIAlertAction(title: "OK", style: .default)
        )

        present(alert, animated: true)
    }
}
