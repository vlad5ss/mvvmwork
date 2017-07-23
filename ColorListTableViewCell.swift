//
//  ColorListTableViewCell.swift
//  mvvmwork
//
//  Created by mac on 7/24/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import UIKit

class ColorListTableViewCell: UITableViewCell {
    
    var viewModel:CellViewModel? {
        willSet(newViewModel) {
            guard let vm = newViewModel else {
                self.textLabel?.text = ""
                return
            }
            self.textLabel?.text = vm.cellText
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension ColorListTableViewCell : TableViewCellDelegate {
    
}
