//
//  ViewController.swift
//  ReactNative-iOS
//
//  Created by 劉戰軍 on 2019/5/29.
//  Copyright © 2019年 liuzhanjun. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let jsCodeLocation = URL.init(string: "http://192.168.50.186:8081/index.ios.bundle?platform=ios&dev=true")
        let dict = ["NameDict": [
            ["name":"思思", "value": "棒棒哒"],
            ["name":"思思sisi", "value": "嘻嘻"]]]
        let rootView = RCTRootView.init(bundleURL: jsCodeLocation, moduleName: "RNHighScores", initialProperties: dict, launchOptions: nil)
        self.view = rootView
    }
}

