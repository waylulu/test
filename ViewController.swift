//
//  ViewController.swift
//  TestGetVideoFristViewImage
//
//  Created by 朱路路 on 2017/10/16.
//  Copyright © 2017年 huangteng. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "test"
        let thumb = UIImageView.init(frame: CGRect.init(x: 50, y: 200, width: 300, height: 200))
        self.view.addSubview(thumb)
        let asset = AVURLAsset.init(url: URL.init(string: "http://gslb.miaopai.com/stream/1UKfVpOmazRYEb4fVejwhgpX~3uIxmHBV~8VCQ__.mp4")!, options: nil)
        let gen = AVAssetImageGenerator.init(asset: asset)
        gen.appliesPreferredTrackTransform = true
        let time = CMTimeMakeWithSeconds(0.0, 1)
        var actualTime : CMTime = CMTimeMakeWithSeconds(0, 0)
        do {
            let image = try gen.copyCGImage(at: time, actualTime: &actualTime)
            thumb.image = UIImage.init(cgImage: image)
        } catch  {
            print("错误")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

