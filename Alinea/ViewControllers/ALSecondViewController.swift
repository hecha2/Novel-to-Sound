//
//  ALSecondViewController.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALSecondViewController: UIViewController {
    
    @IBOutlet weak var firstContainerView: UIView!
    @IBOutlet weak var secondContainerView: UIView!
    @IBOutlet weak var thirdContainerView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstLineView: UIView!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondLineView: UIView!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var thirdLineView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGesture()
        firstLabel.textColor = UIColor.hexStringToUIColor(hex: "2B2CC4")
        thirdLabel.textColor = UIColor.darkGray
        secondLabel.textColor = UIColor.darkGray
        firstContainerView.alpha = 1
        secondContainerView.alpha = 0
        thirdContainerView.alpha = 0
        secondLineView.isHidden = true
        thirdLineView.isHidden = true
    }
    
    func setupGesture() {
        let firstViewTap = UITapGestureRecognizer(target: self, action: #selector(firstViewTappedGesture))
        firstView.addGestureRecognizer(firstViewTap)
        let secondViewTap = UITapG