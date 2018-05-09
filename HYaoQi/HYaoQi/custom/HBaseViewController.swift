//
//  HBaseViewController.swift
//  HYaoQi
//
//  Created by hwq on 2018/5/9.
//  Copyright © 2018年 hwq. All rights reserved.
//

import UIKit

class HBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 11.0, *) {
            UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
        }else {
            self.automaticallyAdjustsScrollViewInsets = false
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    func configNavigationBar() {
        //判断是否存在导航容器
        guard let navi = navigationController else {return}
        //栈顶控制器
        if navi.visibleViewController == self {
            navi.barStyle(style: .theme)
            navi.setNavigationBarHidden(false, animated: true)
            if navi.viewControllers.count > 1 {
                navi.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "nav_back_white"), style: .plain, target: self, action: #selector(HBaseViewController.back))
            }
        }
    }
    
    @objc func back() {
        navigationController?.popViewController(animated: true)
    }
}
