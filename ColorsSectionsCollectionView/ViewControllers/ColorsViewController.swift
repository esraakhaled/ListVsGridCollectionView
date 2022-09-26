//
//  ColorsViewController.swift
//  ColorsSectionsCollectionView
//
//  Created by Esraa Khaled   on 29/08/2022.
//

import UIKit

typealias ColorsSnapshot = NSDiffableDataSourceSnapshot<Int, ColorModel>

class ColorsViewController: UIViewController {
    enum GridItemSize: CGFloat {
        case one = 1.0
        case half = 0.5
        
    }
    @IBOutlet weak var collectionView: UICollectionView!
    var datasource: ColoredDiffableDataSource!
    
    var gridItemSize: GridItemSize = .half {
        didSet {
            collectionView.setCollectionViewLayout(createLayout(), animated: true)
        }
    }
    var listItemSize: GridItemSize = .one {
        didSet {
            collectionView.setCollectionViewLayout(createLayout2(), animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collectionView.collectionViewLayout = configureLayout()
        collectionView.collectionViewLayout = createLayout2()
        collectionView.register(cell: ColorCell.self)
        
        datasource = ColoredDiffableDataSource(collectionView: collectionView)
        
        datasource.apply(ColorsSnapshot.random())
        
    }
    func createLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(gridItemSize.rawValue),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .uniform(size: 5)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalWidth(gridItemSize.rawValue))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
    func createLayout2() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(listItemSize.rawValue),
                                              heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .uniform(size: 5)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalWidth(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
    @IBAction func switchLayoutAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            self.listItemSize = .one
            
        case 1:
            self.gridItemSize = .half
            
            
        default:
            break;
        }
        
    }
    
}
