//
//  ColorDetailViewController.swift
//  mvvmwork
//
//  Created by mac on 7/23/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import UIKit
//color 
class ColorDetailViewController: UIViewController {
    var viewModel:ColorDetailViewModel?
    override func viewDidAppear(_ animated: Bool) {
        if let viewModel = viewModel {
            viewModel.viewDidAppear(animated)
        }
    } }
extension ColorDetailViewController : ColorDetailViewControllerDelegate {
    func setNavigationTitle(_ title:String) -> Void {
        self.title = title
    }
    func setBackgroundColor(red:Float, blue:Float, green:Float, alpha:Float) -> Void {
        self.view.backgroundColor = UIColor(red: CGFloat(red), green:
            CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
    }
}
