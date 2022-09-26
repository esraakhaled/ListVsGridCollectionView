//
//  ColorsSnapshot+Extension.swift
//  ColorsSectionsCollectionView
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

extension ColorsSnapshot {
    //MARK: Functions
   mutating func addRandomItems(count: Int = 10, to section: Int? = nil) {
       var items = [ColorModel]()
        for _ in 0..<count {
            items.append(ColorModel.init())
        }
       if let section = section {
           self.appendItems(items, toSection: section)
        } else {
           self.appendItems(items)
       }
    }

    static func random() -> ColorsSnapshot {
        var snapshot = ColorsSnapshot()
       snapshot.appendSections([0])
       snapshot.addRandomItems()
        return snapshot
   }
}

