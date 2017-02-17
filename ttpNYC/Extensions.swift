//
//  Extensions.swift
//  ttpNYC
//
//  Created by Ehsan Zaman on 2/16/17.
//  Copyright © 2017 Ehsan Zaman. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func anchorToTop(_ top: NSLayoutYAxisAnchor? = nil, left:
        NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil) {
        
        anchorWithConstantsToTop(top, left: left, bottom: bottom, right: right, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0)
    }
    
    func anchorWithConstantsToTop(_ top: NSLayoutYAxisAnchor? = nil, left:
        NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0){
        
       _ = anchor(top, left: left, bottom: bottom, right: right, topConstant: topConstant, leftConstant: leftConstant, bottomConstant: bottomConstant, rightConstant: rightConstant)
        
        
    }
    
    func anchor(_ top: NSLayoutYAxisAnchor? = nil, left:
    NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) -> [NSLayoutConstraint] {
    
     var anchors = [NSLayoutConstraint]()
    
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
        anchors.append(topAnchor.constraint(equalTo: top, constant: topConstant))
        }
        
        if let left = left {
         anchors.append(leftAnchor.constraint(equalTo: left, constant: leftConstant))
        }
        
        if let bottom = bottom {
          anchors.append(bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant))
        }
        
        if let right = right {
           anchors.append(rightAnchor.constraint(equalTo: right, constant: -rightConstant))
        }
        
        anchors.forEach({$0.isActive = true})
      return anchors
    }
}
