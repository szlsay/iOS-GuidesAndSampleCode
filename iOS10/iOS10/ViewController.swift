//
//  ViewController.swift
//  iOS10
//
//  Created by ST on 17/5/8.
//  Copyright © 2017年 ST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Interface 接口
    
    // MARK: lift Period 生命周期
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 100, width: 50, height: 44)
        button.backgroundColor = .red
        view.addSubview(button)
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
    }
    
    // MARK: Event Response 事件响应
    func click()  {
        navigationController?.pushViewController(ProvidingHapticFeedbackController(), animated: true)
    }
    // MARK: Private Methods 私有方法
    
    // MARK: Setters 属性
    
    // MARK: Getters 属性
    

}

