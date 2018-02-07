//
//  ViewController.swift
//  TestWebViewJS
//
//  Created by 朱路路 on 2017/11/4.
//  Copyright © 2017年 huangteng. All rights reserved.
//

import UIKit
import zyk
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let zyk:zyk_web!
        zyk = zyk_web.init(url: "https://www.baidu.com")
        zyk.showSearchState = {
            print("1")
        }
        self.present(zyk, animated: true, completion: nil)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

