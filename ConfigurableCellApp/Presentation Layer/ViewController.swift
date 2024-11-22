//
//  ViewController.swift
//  ConfigurableCellApp
//
//  Created by FIskalinov on 22.11.2024.
//

import UIKit

import UIKit

class ViewController: UITableViewController {

    private let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Register custom cells
        tableView.register(UserCell.self, forCellReuseIdentifier: UserCell.identifier)
        tableView.register(MessageCell.self, forCellReuseIdentifier: MessageCell.identifier)
        tableView.register(ImageCell.self, forCellReuseIdentifier: ImageCell.identifier)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0, 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: UserCell.identifier, for: indexPath) as! UserCell
            let userData = viewModel.items[indexPath.row]
            cell.configure(with: userData as! User)
            return cell
            
        case 1, 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: MessageCell.identifier, for: indexPath) as! MessageCell
            let message = viewModel.items[indexPath.row] ?? ""
            cell.configure(with: message as! String)
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageCell.identifier, for: indexPath) as! ImageCell
            let url = viewModel.items[indexPath.row]
            cell.configure(with: url as! UIImage)
            return cell
            
        default:
            return UITableViewCell()
        }
    }
}

