//
//  ListFlowLayout.swift
//  Grid&ListCollectionView
//
//  Created by Mohammed Azeem Azeez on 04/03/2019.
//  Copyright © 2019 Riverswave Technologies Ltd. All rights reserved.
//

import Foundation
import UIKit
class ListFlowLayout: UICollectionViewFlowLayout {
    
    let itemHeight: CGFloat = 120
    
    override init() {
        super.init()
        setupLayout()
    }
    
    /**
     Init method
     
     - parameter aDecoder: aDecoder
     
     - returns: self
     */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    /**
     Sets up the layout for the collectionView. 0 distance between each cell, and vertical layout
     */
    func setupLayout() {
        minimumInteritemSpacing = 0
        minimumLineSpacing = 1
        scrollDirection = .vertical
        
    }
    
    var itemWidth: CGFloat {
        
        return collectionView!.frame.width
    }
    
    override var itemSize: CGSize {
        set {
            self.itemSize = CGSize(width: itemWidth, height: itemHeight)
        }
        get {
            return CGSize(width: itemWidth, height: itemHeight)
        }
    }
    
    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return collectionView!.contentOffset
    }
}

