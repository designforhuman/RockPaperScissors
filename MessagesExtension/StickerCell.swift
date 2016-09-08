//
//  StickerCell.swift
//  RockPaperScissors
//
//  Created by LeeDavid on 9/5/16.
//  Copyright © 2016 Daylight. All rights reserved.
//

import UIKit
import Messages


class StickerCell: UICollectionViewCell {
    static let reuseIdentifier = "StickerCell"
    @IBOutlet weak var stickerView: MSStickerView!
}
