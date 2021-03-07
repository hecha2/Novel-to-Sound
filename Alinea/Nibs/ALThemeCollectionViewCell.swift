
//
//  ALThemeCollectionViewCell.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALThemeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var themeLabel: UILabel!
    @IBOutlet weak var themeImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 5
        containerView.layer.borderWidth = 1.0
        containerView.layer.borderColor = UIColor.hexStringToUIColor(hex: "EEEFF9").cgColor
    }

}