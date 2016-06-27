//
//  TimelineViewController.swift
//  Makestagram
//
//  Created by Eura Choi on 6/27/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.delegate = self
    }
}

// MARK: Tab Bar Delegate

extension TimelineViewController: UITabBarControllerDelegate {
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        if (viewController is PhotoViewController) {
            print("Take Photo")
            return false
        } else {
            return true
        }
    }
}