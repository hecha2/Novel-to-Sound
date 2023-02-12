
//
//  ALThemesViewController.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALThemesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var themesText = ["Diversity & Inclusion", "Bold Biotech", "Crypto Central", "She runs it", "Clean & Green", "Cannabis-ness", "Power it", "Foodie Fun", "Art & Fashion", "Home is where the heart is"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ALThemeCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "ALThemeCollectionViewCell")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return themesText.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ALThemeCollectionViewCell", for: indexPath) as! ALThemeCollectionViewCell
        cell.themeLabel.text = themesText[indexPath.row]
        if indexPath.row % 2 == 0 {
            cell.themeImageView.image = UIImage(named: "1")
        }
        else {
            cell.themeImageView.image = UIImage(named: "2")
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           let noOfCellsInRow = 2
           
           let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
           
           let totalSpace = flowLayout.sectionInset.left
               + flowLayout.sectionInset.right
               + (flowLayout.minimumInteritemSpacing * CGFloat(noOfCellsInRow - 1))
           
           let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(noOfCellsInRow))
           
           return CGSize(width: size, height: size)
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