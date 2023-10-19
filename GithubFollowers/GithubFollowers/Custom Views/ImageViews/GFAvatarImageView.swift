//
//  GFAvatarImageView.swift
//  GithubFollowers
//
//  Created by irna fitriani on 13/10/23.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache = NetworkManager.shared.cache
    let placeholderImage = UIImage(named: "avatar-placeholder")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func downloadImage(from urlString: String) {
        NetworkManager.shared.downloadImage(from: urlString) { [weak self] image in
            guard let self = self,
                  let image = image else { return }
            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}
