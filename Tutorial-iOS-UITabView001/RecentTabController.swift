//
//  FirstViewController.swift
//  Tutorial-iOS-UITabView001
//
//  Created by Kevin Quinn on 3/28/16.
//  Copyright © 2016 Kevin Quinn. All rights reserved.
//

import UIKit

class RecentTabController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: Selector("SwipeGestureHandler:"))
        swipeRight.direction = .Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: Selector("SwipeGestureHandler:"))
        swipeLeft.direction = .Left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    func SwipeGestureHandler(sender: UISwipeGestureRecognizer) {
        if (sender.direction == .Left) {
            print("Left")
            if let tabController = self.tabBarController {
                tabController.selectedIndex++
            }
        } else if (sender.direction == .Right) {
            print("Right")
        }
    }

    
    
    

}

