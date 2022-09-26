//
//  ColorModel.swift
//  ColorsSectionsCollectionView
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

struct ColorModel {
    let id = UUID()
    let color = UIColor.random()
}

extension ColorModel: Hashable, Equatable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func ==(lhs: ColorModel, rhs: ColorModel) -> Bool {
        return lhs.id == rhs.id
    }
}
 

