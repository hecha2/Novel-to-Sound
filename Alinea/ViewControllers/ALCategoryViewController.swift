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
        let nib = UINib(nibName: "ALCatetoryTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ALCatetoryTableViewCell")
        tableView.tableFooterView = UIView()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ALCateto