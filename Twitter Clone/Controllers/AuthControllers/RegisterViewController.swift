//
//  RegisterViewController.swift
//  Twitter Clone
//
//  Created by Praveen Nagaraj on 13/05/21.
//  Copyright © 2021 Praveen Nagaraj. All rights reserved.
//

import UIKit


class RegisterViewController : UIViewController{
    
    // MARK: - Properties
    
    
    
    // MARK: - LifeCycles
    override func  viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
    }
    
    
    // MARK: - Selectors
    
    
    
    // MARK: - Helpers
    private func configUI(){
        navigationController?.navigationBar.isHidden = true
    }
}
