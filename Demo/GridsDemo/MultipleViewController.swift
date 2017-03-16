//
//  MultipleViewController.swift
//  GridDemo
//
//  Created by Leo on 15/03/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class MultipleViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Multiple Layout"
        
        let viewX1 = self.generateView(withColor: .green)
        let viewX2 = self.generateView(withColor: .green)
        let viewY1 = self.generateView(withColor: .blue)
        let viewY2 = self.generateView(withColor: .blue)
        let viewZ1 = self.generateView(withColor: .red)
        let viewZ2 = self.generateView(withColor: .red)
        
        self.view.addSubview(viewX1)
        self.view.addSubview(viewX2)
        self.view.addSubview(viewY1)
        self.view.addSubview(viewY2)
        self.view.addSubview(viewZ1)
        self.view.addSubview(viewZ2)
        
        viewX1.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 80.0, height: 80.0))
            
            make.centerY.equalTo(viewX2)
            make.size.equalTo(viewX2)
        }
        
        viewY1.snp.makeConstraints { (make) in
            make.centerX.equalTo(viewX1)
            make.size.equalTo(viewX1)
            
            make.centerY.equalTo(viewY2)
            make.size.equalTo(viewY2)
        }
        
        viewZ1.snp.makeConstraints { (make) in
            make.centerX.equalTo(viewX1)
            make.size.equalTo(viewX1)
            
            make.centerY.equalTo(viewZ2)
            make.size.equalTo(viewZ2)
        }
        
        self.view.grids.horizontal(subviews: [viewX1, viewX2])
        self.view.grids.horizontal(subviews: [viewY1, viewY2])
        self.view.grids.horizontal(subviews: [viewZ1, viewZ2])
        
        self.view.grids.vertical(subviews: [viewX1, viewY1, viewZ1])
    }
}
