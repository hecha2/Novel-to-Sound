
//
//  UIImage+Extension.swift
//  Waitless
//
//  Created by jatin verma on 02/07/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    func maskWithColor(color: UIColor) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        let context = UIGraphicsGetCurrentContext()!
        
        let rect = CGRect(origin: CGPoint.zero, size: size)
        
        color.setFill()
        self.draw(in: rect)
        
        context.setBlendMode(.sourceIn)
        context.fill(rect)
        
        let resultImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return resultImage
    }
}