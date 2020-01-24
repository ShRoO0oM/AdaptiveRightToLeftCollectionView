//
//
//  AdaptiveRightToLeftCollectionView
//
//  Created by mohammadz74 on 01/24/2020.
//  Copyright (c) 2020 mohammadz74. All rights reserved.
//

import UIKit

class AdaptiveRightToLeftCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    // MARK: - Private

    private func reversedRect(for rect: CGRect) -> CGRect {

        let point = reversedPoint(for: rect.origin)
        let newPoint = CGPoint(x: point.x - rect.size.width, y: point.y)

        return CGRect(x: newPoint.x, y: newPoint.y, width: rect.size.width, height: rect.size.height)
    }

    private func reversedPoint(for point: CGPoint) -> CGPoint {
        return CGPoint(x: collectionViewContentSize.width - point.x, y: point.y)
    }

    // MARK: - Overridden

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        if UIView.appearance().semanticContentAttribute == .forceLeftToRight {
           return super.layoutAttributesForElements(in: rect)
        }
        
        if #available(iOS 11.0, *) {
            return super.layoutAttributesForElements(in: rect)
        }
        
        guard let superArray = super.layoutAttributesForElements(in: reversedRect(for: rect)) else {
            return nil
        }
        guard let attributes = NSArray(array: superArray, copyItems: true) as? [UICollectionViewLayoutAttributes] else { return nil }
        
        for attribute in attributes {
            attribute.center = reversedPoint(for: attribute.center)
        }

        return attributes
    }
  override var flipsHorizontallyInOppositeLayoutDirection: Bool {
    return UIView.appearance().semanticContentAttribute == .forceRightToLeft
  }
}

