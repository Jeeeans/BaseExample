//
//  HomeViewController.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/29.
//

import RxSwift
import RxCocoa
import UIKit
import BaseKit

class HomeViewController<T: HomeViewModel>: BaseRxViewController<T> {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var useSection: Bool = true
    
    var pager: RxInfinitePager?
    
    var isPaging: Bool = false
    
    var disposeBag = DisposeBag()
    var moduleList: [Module] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewModelBind(_ viewModel: T) {
        super.viewModelBind(viewModel)
        
        viewModel.modulesObservable
            .bind { [weak self] moduleList in
                guard let `self` = self else { return }
                self.moduleList = moduleList
                self.collectionView.reloadData()
            }
        .disposed(by: disposeBag)
    }
    
    func setUI() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
}

extension HomeViewController: RxCollectionViewAdaptable {
    var adapter: HomeAdapter = HomeAdapter()
}

extension HomeViewController: UIScrollViewDelegate {
     
}
