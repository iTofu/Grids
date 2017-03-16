//
//  BaseViewController.swift
//  GridDemo
//
//  Created by Leo on 15/03/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
    }
    
    func generateView(withColor color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        return view
    }
}
