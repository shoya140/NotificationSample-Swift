//
//  SampleObject.swift
//  NotificationSample-Swift
//
//  Created by Shoya Ishimaru on 2016/02/11.
//  Copyright © 2016年 shoya140. All rights reserved.
//

import UIKit

let SampleNotification: String = "SampleNotification"

class SampleObject: NSObject {
    
    func call() {
        NSNotificationCenter.defaultCenter().postNotificationName(
            SampleNotification,
            object: nil,
            userInfo: ["text":"Hello, world!"]
        )
    }

}
