
//
//  ALTrendingViewController.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALTrendingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var first = ["Medifast", "Pinterest", "Slack Technologies", "Evoqua Water"]
    var second = ["MEDI", "PINS", "WORK", "AQUA"]