//
//  ColorDetailViewModel.swift
//  mvvmwork
//
//  Created by mac on 7/24/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

class ColorDetailViewModel : NSObject {
    weak var view:ColorDetailViewControllerDelegate?
    var model:Color?
    
    init(view:ColorDetailViewControllerDelegate?, model:Color?) {
        self.view = view
        self.model = model
        super.init()
    }
}

extension ColorDetailViewModel : ViewModel {
    func viewDidAppear(_ animated: Bool) {
        if let view = self.view, let model = self.model {
            view.setBackgroundColor(red: model.red, blue: model.blue, green: model.green, alpha: model.alpha)
            
            view.setNavigationTitle(model.name)
        }
    }
    
    func setView(delegate:AnyObject?) -> Void {
        self.view = delegate as? ColorDetailViewControllerDelegate
    }
}
