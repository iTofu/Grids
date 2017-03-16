//
//  TableViewController.swift
//  GridDemo
//
//  Created by Leo on 15/03/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "Back",
            style: .plain,
            target: nil,
            action: nil
        )
    }
}

// MARK: - @protocol UITableViewDelegate

extension TableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(SimpleViewController(), animated: true)
        case 1:
            self.navigationController?.pushViewController(MultipleViewController(), animated: true)
        case 2:
            self.navigationController?.pushViewController(IrregularViewController(), animated: true)
        default:
            break
        }
    }
}
