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

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        debugPrint("present \(segue.destination.debugDescription)")
    }
}
