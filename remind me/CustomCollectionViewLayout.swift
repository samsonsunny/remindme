//
//  CustomCollectionViewLayout.swift
//  remind me
//
//  Created by Sam on 01/07/17.
//  Copyright © 2017 Sam. All rights reserved.
//

import UIKit

class CustomCollectionViewLayout: UICollectionViewLayout {
	
	private var cache = [UICollectionViewLayoutAttributes]()
	
	private var contentHeight: CGFloat = 1000.0
	private var contentWidth: CGFloat = 300.0
	
	override func prepare() {
		
		if cache.isEmpty {
			
			for item in 0 ..< collectionView!.numberOfItems(inSection: 0) {
				
				let indexPath = NSIndexPath(item: item, section: 0)
				let frame = CGRect(x: 0, y: 0, width: 50.0, height: 100.0)
				let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath as IndexPath)
				attributes.frame = frame
				cache.append(attributes)
			}
		}
	}
	
	override var collectionViewContentSize: CGSize {
		return CGSize(width: contentWidth, height: contentHeight)
	}
	
	override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
		return cache
	}
}
