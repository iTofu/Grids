//
//  SimpleViewController.swift
//  GridDemo
//
//  Created by Leo on 15/03/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit
import Grids

class SimpleViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Simple Layout"
        
        let viewX1 = self.generateView(withColor: .green)
        let viewX2 = self.generateView(withColor: .green)
        
        self.view.addSubview(viewX1)
        self.view.addSubview(viewX2)
        
        viewX1.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.size.equalTo(CGSize(width: 80.0, height: 80.0))
            
            make.centerY.equalTo(viewX2)
            make.size.equalTo(viewX2)
        }
        
        self.view.grids.horizontal(subviews: [viewX1, viewX2])
    }
}

