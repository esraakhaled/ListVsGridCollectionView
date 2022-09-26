//
//  RoundedCornersCollectionCell.swift
//  ColorsSectionsCollectionView
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

class RoundedCornersCollectionCell: UICollectionViewCell {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.layer.cornerRadius = 10
    }
}
