//
//  HTabbarController.swift
//  HYaoQi
//
//  Created by hwq on 2018/5/7.
//  Copyright © 2018年 hwq. All rights reserved.
//

import UIKit

class HTabbarController: UITabBarController {
    
    //var homeVC : HomeViewController!
   // var mineVC : MineViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        //去掉半透明效果，self.view.height - 49
        self.tabBar.isTranslucent = false
        self.addSubView()
    }

    func addSubView() {
        let homeVC = HomeViewController()
        self.addSubViewController(title: "首页", image: UIImage(named: "tab_home"), selectedImage: UIImage(named: "tab_home_S"), childViewController: homeVC)
        
        let classVC = HomeViewController()
        self.addSubViewController(title: "分类", image: UIImage(named: "tab_class"), selectedImage: UIImage(named: "tab_class_S"), childViewController: classVC)
        
        let bookVC = HomeViewController()
        self.addSubViewController(title: "书签", image: UIImage(named: "tab_book"), selectedImage: UIImage(named: "tab_book_S"), childViewController: bookVC)
        
        
        let mineVC = MineViewController()
        self.addSubViewController(title: "我的", image: UIImage(named: "tab_mine"), selectedImage: UIImage(named: "tab_mine_S"), childViewController: mineVC)

       
    }
    
    func addSubViewController(title : String, image : UIImage?, selectedImage : UIImage?, childViewController : UIViewController) {
        childViewController.title = title
        childViewController.tabBarItem = UITabBarItem(title: nil, image: image?.withRenderingMode(.alwaysOriginal), selectedImage: selectedImage?.withRenderingMode(.alwaysOriginal))
        //当前设备为手机时，设置图片上下边距保证图片居中不超过tabbar
        if UIDevice.current.userInterfaceIdiom == .phone {
            childViewController.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
        }
        self.addChildViewController(HNavigationController(rootViewController: childViewController))
    }
//    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//
//
//        switch item.tag {
//        case 0:
//            homeVC.navigationItem.title = "我的"
//        case 1:
//            mineVC.navigationItem.title = "我的"
//        default:
//            fatalError("创建tabbarController失败")
//        }
//    }
}
