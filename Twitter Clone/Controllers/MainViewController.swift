//
//  MainViewController.swift
//  Twitter Clone
//
//  Created by Praveen Nagaraj on 12/05/21.
//  Copyright © 2021 Praveen Nagaraj. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    // MARK: - Properties
    let actionButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor(red: 71/255, green: 142/255, blue: 255/255, alpha: 1)
        btn.addTarget(self, action:#selector(postActionClicked), for: UIControl.Event.touchUpInside)
        return btn
    }()
    
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        configureViewController()
        
    }
    
    
    // MARK: - Selectors
    @objc func postActionClicked(){
        print("triggered")
        
    }
    
    
    // MARK: - Helpers
    private func configUI(){
        view.addSubview(actionButton)
        actionButton.anchor(paddingTop: 20, paddingBottom: 60, paddingRight: 20, paddingLeft: 20,
                            bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor,width: CGFloat(50), height: CGFloat(50),isRounded: true)
        actionButton.setBackgroundImage(#imageLiteral(resourceName: "add_post") , for: .normal)
        actionButton.clipsToBounds = true
        actionButton.tintColor = .white
    }
    
    
    private func configureViewController(){
        // MARK: - Feed Controller
        let feedController = templateNavigationController(image: #imageLiteral(resourceName: "house_ico"),tabName: "Home", viewController: FeedController())

        // MARK: - Explore Controller
        let exploreController = templateNavigationController(image: #imageLiteral(resourceName: "explore_ico"),tabName: "Explore", viewController: ExploreController())
        
        // MARK: - Notifications Controller
        let notificationController = templateNavigationController(image: #imageLiteral(resourceName: "bell_ico"),tabName: "Notifications", viewController: NotificationsController())
        
        // MARK: -Converssations Controller
        let conversationsController = templateNavigationController(image: #imageLiteral(resourceName: "chat_ico"),tabName: "Messages", viewController: ConversationsController())
        
        
        // MARK: - View Controllers Collection
        viewControllers = [feedController,exploreController,notificationController,conversationsController]
    }
    
    
    
    
    private func templateNavigationController(image:UIImage,tabName:String,viewController:UIViewController) -> UINavigationController{
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = Utilities().imageResizer(image: image, size: CGSize(width: 30 , height: 30))
        navController.navigationBar.barTintColor = .white
        navController.tabBarItem.title = tabName
        navController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black]
        return navController
    }
    
}

