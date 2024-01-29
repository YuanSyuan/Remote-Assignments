//
//  ViewController.swift
//  4
//
//  Created by 李芫萱 on 2024/1/27.
//

import UIKit

class ViewController: UIViewController {
   
    let firstAccount = "appworks_school"
    let firstPassword = "1234"
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        segmentedControl.tintColor = UIColor.black
        segmentedControl.backgroundColor = UIColor(_colorLiteralRed: 255/255, green: 107/255, blue: 14/255, alpha: 1)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: .valueChanged)
        checkTextField.isEnabled = false
        checkTextField.backgroundColor = UIColor.gray
        checkLabel.textColor = UIColor.gray
    }

    @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            checkTextField.isEnabled = false
            checkTextField.backgroundColor = UIColor.gray
            checkLabel.textColor = UIColor.gray
        case 1:
            checkTextField.isEnabled = true
            checkTextField.backgroundColor = UIColor.white
            checkLabel.textColor = UIColor.white
        default:
            break
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        var title: String = "Error"
        var message: String = "Login fail"
        
        
    if segmentedControl.selectedSegmentIndex == 0 {
            if accountTextField.text == firstAccount && passwordTextField.text == firstPassword {
                title = "Congrates!"
                message = "Logged in Successfully."
            } else {
                title = "Error"
                message = "Login fail"
            }
        } else if segmentedControl.selectedSegmentIndex == 1 {
            if accountTextField.text == "" && passwordTextField.text == "" && checkTextField.text == "" {
                title = "Error"
                message = "Please fill in the blank."
            } else if passwordTextField.text == "" && checkTextField.text == "" {
                title = "Error"
                message = "Password and check password should not be empty."
                } else if passwordTextField.text != checkTextField.text {
                if checkTextField.text == "" {
                    title = "Error"
                    message = "Check password should not be empty."
                } else if passwordTextField.text == "" {
                    title = "Error"
                    message = "Password should not be empty."
                } else {
                    title = "Error"
                    message = "Password doesn't match."
                }
            } else if passwordTextField.text == checkTextField.text {
                title = "Congrates!"
                message = "Signed up Successfully."
            } else if accountTextField.text == "" {
                title = "Error"
                message = "Account should not be empty."
            } else if passwordTextField.text == "" {
                title = "Error"
                message = "Password should not be empty."
            }
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.clearTextField()
          })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        }
    
    func clearTextField() {
    accountTextField.text = ""
    passwordTextField.text = ""
    checkTextField.text = ""
    }
}


