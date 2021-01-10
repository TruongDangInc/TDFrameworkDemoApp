//
//                ______                                       __ _
//               /_  __/______  ______  ____  ____ _          / __ \____ _____  ____ _
//                / / / ___/ / / / __ \/ __ \/ __ `/         / / / / __ `/ __ \/ __ `/
//               / / / /  / /_/ / /_/ / / / / /_/ /         / /_/ / /_/ / / / / /_/ /
//              /_/ /_/   \__,_/\____/_/ /_/\__, /         /_____/\__,_/_/ /_/\__, /
//                                         /____/                            /____/
//
//  RegisterViewController.swift
//  DemoApp
//
//  Created by Đặng Văn Trường on 15/12/2020.
//  Copyright (c) 2020 TruongDang Inc. All rights reserved.
//

import UIKit
import TDFramework

class RegisterViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.isUserInteractionEnabled = false
        NotificationCenter.default.addObserver(self, selector: #selector(self.textFieldDidChange(notification:)), name: UITextField.textDidChangeNotification, object: nil)
    }

    @IBAction func registerButtonDidTouch() {
        dismiss(animated: true) {
            TDServices.shared.registerAccout(withName: self.usernameTextField.text!, password: self.passwordTextField.text!)
            debugPrint("RegisterViewController dismissed")
        }
    }

    @objc func textFieldDidChange(notification: Notification) {
        let userName = usernameTextField.text ?? ""
        let pass = passwordTextField.text ?? ""
        
        registerButton.isUserInteractionEnabled = !userName.isEmpty && !pass.isEmpty
    }
}
