
//
//  ALCatetoryTableViewCell.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALCatetoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryView: UIView!
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryView.layer.cornerRadius = 55
        categoryImage.layer.cornerRadius = categoryImage.bounds.height / 2
        categoryImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}