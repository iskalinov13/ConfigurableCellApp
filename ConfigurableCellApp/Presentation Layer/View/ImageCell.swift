//
//  ImageCell.swift
//  ConfigurableCellApp
//
//  Created by FIskalinov on 22.11.2024.
//

import UIKit
import SnapKit

class ImageCell: UITableViewCell {

    static let identifier = "ImageCell"
    
    let cellImageView = UIImageView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(cellImageView)
        cellImageView.snp.makeConstraints {
            $0.edges.equalTo(contentView).inset(16)
        }
    }
    
    func configure(with image: UIImage) {
        cellImageView.image = image
    }
}
