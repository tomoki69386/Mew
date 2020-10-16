//
//  BackwardCompatibility.swift
//  Mew
//
//  Created by tarunon on 2018/10/01.
//  Copyright © 2018年 Mercari. All rights reserved.
//

import UIKit

#if swift(>=4.2)
#else

extension UIViewController {
    func addChild(_ childViewController: UIViewController) {
        addChildViewController(childViewController)
    }
    
    func willMove(toParent newParent: UIViewController?) {
        willMove(toParentViewController: newParent)
    }
    
    func didMove(toParent newParent: UIViewController?) {
        didMove(toParentViewController: newParent)
    }
    
    func removeFromParent() {
        removeFromParentViewController()
    }
}

extension UICollectionView {
    static var elementKindSectionHeader: String {
        return UICollectionElementKindSectionHeader
    }
    
    static var elementKindSectionFooter: String {
        return UICollectionElementKindSectionFooter
    }

    typealias ScrollDirection = UICollectionViewScrollDirection
}

#endif

public extension UIStackView {
    @available(iOS 11.0, *)
    func setCustomSpacing<Content, Parent>(_ spacing: CGFloat, after container: ContainerView.Container<Content, Parent>) where
        Content: UIViewController,
        Content: Instantiatable,
        Parent: UIViewController,
        Parent: Instantiatable {
        
        guard let view = container.contents.first?.view else { return }
        setCustomSpacing(spacing, after: view)
    }
}
