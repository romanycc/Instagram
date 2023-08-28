//
//  ProfileInfoHeaderCollectionReusableView.swift
//  instagram
//
//  Created by Roman Yang on 2023/8/14.
//

import UIKit

class ProfileInfoHeaderCollectionReusableView: UICollectionReusableView {
        static let identifier = "ProfileInfoHeaderCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBlue
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}
