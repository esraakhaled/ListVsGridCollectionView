//
//  CellFromNib.swift
//  ColorsSectionsCollectionView
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

protocol CellFromNib: UICollectionViewCell {
    
}

extension CellFromNib {
    static var nib: UINib {
        return UINib(nibName: String(describing: Self.self), bundle: nil)
    }
}
