//
//  Extensions.swift
//  Twitter Clone
//
//  Created by Praveen Nagaraj on 13/05/21.
//  Copyright © 2021 Praveen Nagaraj. All rights reserved.
//

import UIKit


extension UIView{
    func anchor(
        paddingTop: CGFloat = 0,
        paddingBottom: CGFloat = 0,
        paddingRight: CGFloat = 0,
        paddingLeft: CGFloat = 0,
        top: NSLayoutYAxisAnchor? = nil,
        left: NSLayoutXAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        right: NSLayoutXAxisAnchor? = nil,
        width: CGFloat? = nil,
        height:CGFloat? = nil,
        isRounded:Bool? = false
    ){
        // inform xcode to accept programmatic autolayout
        translatesAutoresizingMaskIntoConstraints = false
            
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left{
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let right = right{
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if let bottom = bottom{
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let width = width{
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height{
            heightAnchor.constraint(equalToConstant: height).isActive = true
            if isRounded == true{
                layer.cornerRadius = height / 2
            }
        }
        
    }
}

