//
//  ViewController.swift
//  NotificationSample-Swift
//
//  Created by Shoya Ishimaru on 2016/02/11.
//  Copyright © 2016年 shoya140. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: "gotMessage:",
            name: SampleNotification,
            object: nil
        )
        
        let sample = SampleObject()
        sample.call()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        NSNotificationCenter.defaultCenter().removeObserver(
            self,
            name: SampleNotification,
            object: nil
        )
    }
    
    // MARK: - Notification
    
    func gotMessage(notification: NSNotification) {
        let text = notification.userInfo!["text"] as! String
        print(text)
    }
}

