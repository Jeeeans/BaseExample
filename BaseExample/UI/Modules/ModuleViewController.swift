//
//  ModuleViewController.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/08/12.
//

import UIKit
import BaseKit

class ModuleViewController<T: BaseRxViewModel>: BaseRxViewController<T> {
    @IBOutlet weak var collectionView: UICollectionView!
    
    func register() {
        collectionView.register(nibFromClass: MarginCell.self)
    }
}
