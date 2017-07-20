//
//  ColorListTableViewController.swift
//  mvvmwork
//
//  Created by mac on 7/21/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import UIKit

class ColorListTableViewController: UITableViewController {
    private var viewModel:TableViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = false
        self.viewModel = ColorTableViewModel(view: self, title:"Select a color")
    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        guard let viewModel = viewModel else {
            return 0
        }
        return viewModel.numberOfRows()
    }
    override func tableView(_ tableView: UITableView, cellForRowAt
        indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
            "ColorListtCell", for: indexPath) as? ColorListTableViewCell
        guard let viewModel = viewModel,
            let colorListTableViewCell = cell else {
                return UITableViewCell()
        }
        let detailViewModel = viewModel.cellViewModel(forIndexPath:
            indexPath)
        colorListTableViewCell.viewModel = detailViewModel
        return colorListTableViewCell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt
        indexPath: IndexPath) {
        guard let viewModel = viewModel else {
            return
        }
        viewModel.selectRow(atIndexPath:indexPath)
        self.performSegue(withIdentifier: "colorDetailSegue", sender: nil)
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let viewModel = viewModel
            else {
                return }
        if identifier.compare("colorDetailSegue") != .orderedSame {
            return
        }
        if let colorDetailViewController = segue.destination as?
            ColorDetailViewController,
            let destinationViewModel = viewModel.viewModelForSelectedRow() {
            destinationViewModel.setView(delegate: colorDetailViewController)
            colorDetailViewController.viewModel = destinationViewModel
        }
    } }

