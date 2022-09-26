//
//  UICollectionReusableView+Extension.swift
//  ColorsSectionsCollectionView
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

extension UICollectionReusableView {
    //MARK: Properties
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}

