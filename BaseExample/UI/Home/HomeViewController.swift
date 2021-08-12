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

class HomeViewController<T: HomeViewModel>:
    BaseRxViewController<T>,
    UICollectionViewDelegateFlowLayout,
    UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var useSection: Bool = true
    var adapter: HomeAdapter = HomeAdapter()
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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return adapter.getListCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return adapter.size(indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = adapter.getCell(indexPath) else {
            return collectionView.dequeueReusableCell(fromClass: MarginCell.self, for: indexPath)
        }
        return cell
    }
}

extension HomeViewController {
    
}
