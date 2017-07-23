//
//  ViewModel.swift
//  mvvmwork
//
//  Created by mac on 7/24/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
protocol ViewModel {
    func viewDidAppear(_ animated: Bool)
    func setView(delegate:AnyObject?) -> Void
}
