//
//                ______                                       __ _
//               /_  __/______  ______  ____  ____ _          / __ \____ _____  ____ _
//                / / / ___/ / / / __ \/ __ \/ __ `/         / / / / __ `/ __ \/ __ `/
//               / / / /  / /_/ / /_/ / / / / /_/ /         / /_/ / /_/ / / / / /_/ /
//              /_/ /_/   \__,_/\____/_/ /_/\__, /         /_____/\__,_/_/ /_/\__, /
//                                         /____/                            /____/
//
//  MainViewController.swift
//  DemoApp
//
//  Created by Đặng Văn Trường on 14/12/2020.
//  Copyright (c) 2020 TruongDang Inc. All rights reserved.
//

import UIKit
import TDFramework

class MainViewController: UIViewController {
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        loginButton.layer.cornerRadius = 6
        loginButton.layer.masksToBounds = true
        
        registerButton.layer.borderWidth = 1
        registerButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        registerButton.layer.cornerRadius = 6
        registerButton.layer.masksToBounds = true
    }

    @IBAction func registerButtonDidTouch() {
        
        performSegue(withIdentifier: "presentRegisterViewController", sender: self)
    }

    @IBAction func loginButtonDidTouch() {
        
        performSegue(withIdentifier: "presentLoginViewController", sender: self)
    }

    @IBAction func historyButtonDidTouch() {
        performSegue(withIdentifier: "presentHistoryViewController", sender: self)
    }

    @IBAction func logoutButtonDidTouch() {
        TDServices.shared.logout()
    }

    @IBAction func unwindToMainViewController( _ seg: UIStoryboardSegue) {}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        debugPrint("present \(segue.destination.debugDescription)")
    }
}
