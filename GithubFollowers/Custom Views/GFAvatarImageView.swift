//
//  GFAvatarImageView.swift
//  GithubFollowers
//
//  Created by Shadat Vai on 11/2/24.
//

import UIKit

class GFAvatarImageView: UIImageView{
    
    let placeholderImage = UIImage(named: "avatar-placeholder")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints  = false
    }
}
