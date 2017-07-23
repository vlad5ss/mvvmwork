//
//  CountriesViewController.swift
//  mvvmwork
//
//  Created by mac on 7/23/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import UIKit

class CountriesViewController: UIViewController {
    private var viewModel:CountriesViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = CountriesViewModel(view: self,
                                            title:"Select a country")
    } }
