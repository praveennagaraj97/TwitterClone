//
//  ConversationsController.swift
//  Twitter Clone
//
//  Created by Praveen Nagaraj on 12/05/21.
//  Copyright © 2021 Praveen Nagaraj. All rights reserved.
//

import UIKit

class ConversationsController : UIViewController{
    // MARK: - Properties
    
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
       configUI()
    }
    
    
    // MARK: - Helpers
    private func configUI(){
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}
