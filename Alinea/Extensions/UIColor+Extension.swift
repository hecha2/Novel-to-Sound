//
//  UIColor+Extension.swift
//  DukaanPro
//
//  Created by jatin verma on 18/04/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    
    convenience init(hexString: String, a: CGFloat = 1.0) {
        
        var cString:Strin