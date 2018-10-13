//
//  UIColorAdditions.swift
//  HeroFitnessApp
//
//  Created by Sunggat Aiymbay on 02.08.2018.
//  Copyright © 2018 Sunggat Aiymbay. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    // MARK: - Helper Functions
    
    class func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
}

    public class func CaptainAmericaBackgroundColor() -> UIColor {
        return hexStringToUIColor(hex: "#004775")
}
    public class func DeadpoolBackgroundColor() -> UIColor {
        return hexStringToUIColor(hex: "#B60001")
}
    public class func BlackPantherBackgroundColor() -> UIColor {
        return hexStringToUIColor(hex: "#110925")
}
    public class func BatmanBackgroundColor() -> UIColor {
        return hexStringToUIColor(hex: "#242424")
    }
    public class func ThorBackgroundColor() -> UIColor {
        return hexStringToUIColor(hex: "#444543")
    }
    public class func IronManBackgroundColor() -> UIColor {
        return hexStringToUIColor(hex: "#AA0505")
    }
    public class func ButtonBackgroundColor() -> UIColor {
        return hexStringToUIColor(hex: "#3B99FC")
    }
    public class func cellBackgroundColor() -> UIColor {
        return hexStringToUIColor(hex: "#EBEBEB")
    }
    public class func titleColor() -> UIColor {
        return hexStringToUIColor(hex: "#FF3939")
    }
    
}
