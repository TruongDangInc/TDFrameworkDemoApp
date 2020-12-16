//
//                ______                                       __ _
//               /_  __/______  ______  ____  ____ _          / __ \____ _____  ____ _
//                / / / ___/ / / / __ \/ __ \/ __ `/         / / / / __ `/ __ \/ __ `/
//               / / / /  / /_/ / /_/ / / / / /_/ /         / /_/ / /_/ / / / / /_/ /
//              /_/ /_/   \__,_/\____/_/ /_/\__, /         /_____/\__,_/_/ /_/\__, /
//                                         /____/                            /____/
//
//  HistoryTableViewCell.swift
//  DemoApp
//
//  Created by Đặng Văn Trường on 16/12/2020.
//  Copyright (c) 2020 TruongDang Inc. All rights reserved.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    @IBOutlet weak var macostImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    /// Cell reusable identifier
    static let id = "HistoryTableViewCell"

    static func nib() ->UINib {
        return UINib(nibName: "HistoryTableViewCell", bundle: nil)
    }
}
