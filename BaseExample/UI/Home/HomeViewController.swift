//
//  HomeViewController.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/29.
//

import UIKit
import BaseKit

class HomeViewController<T: HomeViewModel>: BaseRxViewController<T> {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var useSection: Bool = true
    
    var pager: RxInfinitePager?
    
    var isPaging: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewModelBind(_ viewModel: T) {
        self.viewModel = viewModel
    }
}

