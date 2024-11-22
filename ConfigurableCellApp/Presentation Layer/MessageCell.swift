//
//  MessageCell.swift
//  ConfigurableCellApp
//
//  Created by FIskalinov on 22.11.2024.
//

import UIKit
import SnapKit

class MessageCell: UITableViewCell {

    static let identifier = "MessageCell"
    
    let messageLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(messageLabel)
        messageLabel.numberOfLines = 0
        messageLabel.snp.makeConstraints {
            $0.edges.equalTo(contentView).inset(16)
        }
    }
    
    func configure(with text: String) {
        messageLabel.text = text
    }
}

