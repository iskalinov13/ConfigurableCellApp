//
//  ViewModel.swift
//  ConfigurableCellApp
//
//  Created by FIskalinov on 22.11.2024.
//

import UIKit

class ViewModel {
    let items: [Any] = [
        User(name: "John Smith", imageName: "user3"),
        "Hi, this is a message text. Tra la la. Tra la la.",
        UIImage(named: "beach")!,
        User(name: "Jessica Wood", imageName: "user2"),
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
    ]
}
