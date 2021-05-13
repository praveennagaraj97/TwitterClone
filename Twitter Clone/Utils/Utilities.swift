//
//  Utilities.swift
//  Twitter Clone
//
//  Created by Praveen Nagaraj on 13/05/21.
//  Copyright © 2021 Praveen Nagaraj. All rights reserved.
//

import UIKit


class Utilities {
    // MARK: - inputContainerView returs UiView - contains input textfield and icon
    func inputContainerView(withImage image : UIImage,textField:UITextField)->UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0).isActive = true
        view.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
      
        
        //MARK: - Image View
        let imgView = UIImageView()
        view.addSubview(imgView)
        imgView.image = imageResizer(image: image, size: CGSize(width: 30, height: 30))
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
        imgView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
        
        
        //MARK: - Attach text field to the view
        view.addSubview(textField)
        textField.leftAnchor.constraint(equalTo: imgView.rightAnchor, constant: 4).isActive = true
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textColor = .white
        
        
        // MARK: - Divider
        let dividerView = UIView()
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dividerView)
        dividerView.backgroundColor = .white
        dividerView.heightAnchor.constraint(equalToConstant: CGFloat(0.7)).isActive = true
        dividerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 5).isActive = true
        dividerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -5).isActive = true
        dividerView.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 8).isActive = true
        
        return view
        
    }
    
    
    func textFieldContainerView(withPlaceholder placeHolder:String) -> UITextField {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return textField
    }
    
    
    func imageResizer(image:UIImage,size:CGSize) -> UIImage  {
        let renderer = UIGraphicsImageRenderer(size: size)
        
        return renderer.image { (context) in
            image.draw(in: CGRect(origin: .zero, size: size))
        }
    }
    
}
