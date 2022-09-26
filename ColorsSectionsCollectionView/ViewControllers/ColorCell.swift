//
//  ColorCell.swift
//  ColorsSectionsCollectionView
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

class ColorCell: RoundedCornersCollectionCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override var isHighlighted: Bool {
        didSet {
            contentView.alpha = isHighlighted ? 0.7 : 1.0
        }
    }
}
