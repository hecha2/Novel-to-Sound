//
//  ALCategoryViewController.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALCategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var text = ["Stocks", "ETFs", "Crypto"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "