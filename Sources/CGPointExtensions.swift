//
//  CGPointExtensions.swift
//  EZSwiftExtensions
//
//  Created by Sanyal, Arunav on 10/29/16.
//  Copyright © 2016 Goktug Yilmaz. All rights reserved.
//

import UIKit
import Foundation

extension CGPoint {
    
    /// EZSE: Converts angle degrees to radians.
    public static func + (this: CGPoint, that: CGPoint) -> CGPoint {
        return CGPoint(x: this.x + that.x, y: this.y + that.y)
    }
    
    /// EZSE: Calculates the distance between two CG Points. 
    /// Inspired by : http://stackoverflow.com/questions/1906511/how-to-find-the-distance-between-two-cg-points
    public static func distance(from: CGPoint, to: CGPoint) -> CGFloat {
        return sqrt(pow(to.x - from.x, 2) + pow(to.y - from.y, 2))
    }
    
    /// EZSE: Normalizes the vector described by the CGPoint to length 1.0 and returns the result as a new CGPoint.
    public func normalized() -> CGPoint {
        let len = CGPoint.distance(from: self, to: CGPoint.zero)
        return CGPoint(x: self.x / len, y: self.y / len)
    }
}
