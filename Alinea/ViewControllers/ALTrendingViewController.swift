
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
    var perc = ["+50.78%", "-4.77%", "+34.1%", "-15.3%"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ALTrendingTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ALTrendingTableViewCell")
        tableView.tableFooterView = UIView()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ALTrendingTableViewCell", for: indexPath) as! ALTrendingTableViewCell
        cell.tFirstLabel.text = first[indexPath.row]
        cell.tSecondLabel.text = second[indexPath.row]
        cell.tLabel.text = perc[indexPath.row]
        if indexPath.row % 2 == 0 {
            cell.tImageView.image = UIImage(named: "5")
            cell.tView.backgroundColor = UIColor.hexStringToUIColor(hex: "72D8B6")
        }
        else {
            cell.tImageView.image = UIImage(named: "4")
            cell.tView.backgroundColor = UIColor.hexStringToUIColor(hex: "EB7370")
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}