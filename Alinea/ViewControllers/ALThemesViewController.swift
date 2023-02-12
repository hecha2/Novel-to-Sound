
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