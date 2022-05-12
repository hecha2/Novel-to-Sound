//
//  ALMainViewController.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALMainViewController: UIViewController {
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    @IBOutlet weak var secondViewIcon: UIImageView!
    @IBOutlet weak var fourthViewIcon: UIImageView!
    @IBOutlet weak var fifthViewIcon: UIImageView!
    @IBOutlet weak var thirdViewIcon: UIImageView!
    @IBOutlet weak var fileViewIcon: UIImageView!
    
    let SEARCH_ICON = "search"
    let GROUP_ICON = "group"
    let BULB_ICON = "lightbulb"
    let TRADE_ICON = "trade"
    let FILE_ICON = "file"
    let firstVC = "al_first_view_controller"
    let secondVC = "al_second_view_controller"
    var firstViewController: ALFirstViewController!
    var searchViewController: ALSecondViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLink()
        setupUI()
        setupGesture()
    }
    
    func setupLink() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        firstViewController = storyboard.instantiateViewController(withIdentifier: firstVC) as? ALFirstViewController
        searchViewController = storyboard.instantiateViewController(withIdentifier: secondVC) as? ALSecondViewController
        viewControllers = [firstViewController, searchViewController]
        
    }
    
    func setupGesture() {
        let firstViewTap = UITapGestureRecognizer(target: self, action: #selector(firstViewTappedGesture))
        firstView.addGestureRecognizer(firstViewTap)
  