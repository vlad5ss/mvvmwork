//
//  TableViewCellViewModel-.swift
//  mvvmwork
//
//  Created by mac on 7/24/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation


class TableViewCellViewModel: NSObject, CellViewModel {
    
    var cellText:String
    private var view:TableViewCellDelegate?
    
    init(view:TableViewCellDelegate?, cellText:String) {
        self.cellText = cellText
        super.init()
    }
    
    override init() {
        cellText = ""
        super.init()
    }
    
    func setView(delegate:AnyObject?) -> Void {
        view = delegate as? TableViewCellDelegate
    }
    
    func viewDidAppear(_ animated: Bool) {
        
    }
}
