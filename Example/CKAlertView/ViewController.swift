//
//  ViewController.swift
//  CKAlertView
//
//  Created by kaich on 10/10/2016.
//  Copyright (c) 2016 kaich. All rights reserved.
//

import UIKit
import CKAlertView

class ViewController: UIViewController {
    var alert :CKAlertView?

    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert(_ sender: AnyObject) {
        alert = CKAlertView()
        alert?.show(title: "无法安装‘爱奇艺视频播放’，因苹果系统的限制您可以选择如下方法解决", message: ["Swift 是一门进行 iOS 和 OS X 应用开发的新语言。然而，如果你有 C 或者 Objective-C 开发经验的话，你会发现 Swift 的很多内容都是你熟悉的"], cancelButtonTitle: "确定", otherButtonTitles: nil){ index in
            self.lblMessage.text = "One button alert dismissed"
        }
        
    }
    
    @IBAction func showDoubleButtonAlert(_ sender: AnyObject) {
        alert = CKAlertView()
        alert?.show(title: "创建一个其自身类型为可选类型的对象", message: ["如果一个类，结构体或枚举类型的对象，在构造自身的过程中有可能失败，则为其定义一个可失败构造器，是非常有必要的"], cancelButtonTitle: "取消", otherButtonTitles: ["确定"]){ index in
            self.lblMessage.text = "\(index) clicked,two button alert dismissed"
        }
    }

    @IBAction func showMultiButtonAlert(_ sender: AnyObject) {
        alert = CKAlertView()
        alert?.show(title: "定义了一个名为TemperatureUnit的枚举类型", message: ["(Kelvin，Celsius，和 Fahrenheit)和一个被用来找到Character值所对应的枚举成员的可失败构造器。还能在参数不满足你所期望的条件时，导致构造失败"], cancelButtonTitle: "取消", otherButtonTitles: ["确定","重试","结束"]){ index in
            self.lblMessage.text = "\(index) clicked,multi button alert dismissed"
        }
    }
    
    @IBAction func showImageBodyAlert(_ sender: AnyObject) {
        alert = CKAlertView()
        let image = UIImage(named: "sample_image")
        alert?.show(title: "该可失败构造器传递合适的参数", image: image, cancelButtonTitle: "我知道了", otherButtonTitles: ["查看详情"], completeBlock: { (index) in
            self.lblMessage.text = "\(index) clicked, image message alert dismissed"
        })
    }
    
    @IBAction func showImageHeaderAlert(_ sender: AnyObject) {
        alert = CKAlertView()
        let image = UIImage(named: "repair_icon")
        alert?.show(image: image, title: "开始学习swift", message: ["如果你使用闭包来初始化属性的值","请记住在闭包执行时，实例的其它部分都还没有初始化。","$","这意味着你不能够在闭包里访问其它的属性，就算这个属性有默认值也不允许"], cancelButtonTitle: "不再提醒", otherButtonTitles: ["我知道了"], completeBlock: { (index) in
            self.lblMessage.text = "\(index) clicked, image title alert dismissed"
        })
    }
    
    @IBAction func showMajorActionAlert(_ sender: AnyObject) {
        alert = CKAlertView()
        alert?.show(title: "可失败构造器", message: ["西洋跳棋游戏在一副黑白格交替的 10x10 的棋盘中进行。为了呈现这副游戏棋盘，Checkerboard结构体定义了一个属性boardColors，它是一个包含 100 个布尔值的数组"], cancelButtonTitle: "我知道了", majorButtonTitle: "现在去设置", anotherButtonTitle: "不在提醒") {(index) in
            self.lblMessage.text = "\(index) clicked, major action alert dismissed"
        }
    }
}

