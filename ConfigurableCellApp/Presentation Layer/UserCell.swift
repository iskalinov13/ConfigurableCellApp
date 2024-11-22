//
//  UserCell.swift
//  ConfigurableCellApp
//
//  Created by FIskalinov on 22.11.2024.
//

import UIKit
import SnapKit

struct User {
    let name: String
    let imageName: String
}

class UserCell: UITableViewCell {

    static let identifier = "UserCell"
    
    let profileImageView: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 25
        image.clipsToBounds = true
        return image
    }()
    
    let nameLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(profileImageView)
        contentView.addSubview(nameLabel)
        profileImageView.snp.makeConstraints {
            $0.top.left.equalToSuperview().offset(16)
            $0.centerY.equalToSuperview()
            $0.width.height.equalTo(50)
        }
        
        nameLabel.snp.makeConstraints {
            $0.left.equalTo(profileImageView.snp.right).offset(16)
            $0.top.equalToSuperview().offset(16)
            $0.centerY.equalToSuperview()
        }
    }

    func configure(with user: User) {
        nameLabel.text = user.name
        profileImageView.image = UIImage(named: user.imageName)
    }
}
