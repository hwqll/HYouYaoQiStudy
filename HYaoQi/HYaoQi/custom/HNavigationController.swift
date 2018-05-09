//
//  HNavigationController.swift
//  HYaoQi
//
//  Created by hwq on 2018/5/7.
//  Copyright © 2018年 hwq. All rights reserved.
//

import UIKit
enum HNavigationBarStyle {
    case theme
    case clear
    case white
}
class HNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //MARK: - 代码重用
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
}
extension UINavigationController {
    //设置导航栏样式
    func barStyle(style : HNavigationBarStyle) {
        switch style {
        case .theme:
            self.navigationBar.barStyle = .black
            self.navigationBar.setBackgroundImage(UIImage(named: "nav_bg"), for: .default)
            self.navigationBar.shadowImage = UIImage()
        case .clear:
            self.navigationBar.barStyle = .black
            self.navigationBar.setBackgroundImage(UIImage(), for: .default)
            self.navigationBar.shadowImage = UIImage()
        case .white:
            self.navigationBar.barStyle = .default
            // self.navigationBar.setBackgroundImage(UIColor.white.image(), for: .default)
            self.navigationBar.shadowImage = nil
            
        }
    }
}
