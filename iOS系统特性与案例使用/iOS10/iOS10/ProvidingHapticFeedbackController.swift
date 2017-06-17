//
//  ProvidingHapticFeedbackController.swift
//  iOS10
//
//  Created by ST on 17/5/9.
//  Copyright © 2017年 ST. All rights reserved.
//

import UIKit

class ProvidingHapticFeedbackController: UIViewController {

    // MARK: Interface 接口
    
    // MARK: lift Period 生命周期
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let slider = UISlider()
        slider.frame = CGRect.init(x: 100, y: 100, width: 200, height: 44)
        slider.backgroundColor = .red
        view.addSubview(slider)
        
        
    }
    // MARK: Event Response 事件响应
    
    // MARK: Private Methods 私有方法
    
    // MARK: Setters 属性
    
    // MARK: Getters 属性
}
