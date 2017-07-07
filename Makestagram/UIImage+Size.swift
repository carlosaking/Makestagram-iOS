//
//  UIImage+Size.swift
//  Makestagram
//
//  Created by Carlos A. on 7/7/17.
//  Copyright © 2017 Carlos A. King. All rights reserved.
//

import UIKit

extension UIImage {
    
    var aspectHeight: CGFloat {
        let heightRatio = size.height / 736
        let widthRatio = size.width / 414
        let aspectRatio = fmax(heightRatio, widthRatio)
        
        return size.height / aspectRatio
    }
    
}
