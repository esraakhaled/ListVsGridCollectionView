//
//  ColoredDiffableDataSource.swift
//  ColorsSectionsCollectionView
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

class ColoredDiffableDataSource: UICollectionViewDiffableDataSource<Int, ColorModel> {
    init(collectionView: UICollectionView) {
        super.init(collectionView: collectionView) { (collectionView, indexPath, color) -> UICollectionViewCell? in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ColorCell.reuseIdentifier, for: indexPath)
            cell.contentView.backgroundColor = color.color
            return cell
        }
    }
}
