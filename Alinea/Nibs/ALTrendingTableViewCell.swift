//
//  ALTrendingTableViewCell.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALTrendingTableViewCell: UITableViewCell {

    @IBOutlet weak var tImageView: UIImageView!
    @IBOutlet weak var tFirstLabel: UILabel!
    @IBOutlet weak var tSecondLabel: UILabel!
    @IBOutlet weak var tView: UIView!
    @IBOutlet weak var tLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        tView.layer.cornerRadius = 17
        tView.layer.borderColor = UIColor.lightGray.cgColor
        tView.layer.borderWidth = 0.5
        tImageView.layer.cornerRadius = tImageView.bounds.height / 2
        tImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     