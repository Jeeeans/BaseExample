//
//  BigBannerCell.swift
//  BaseExample
//
//  Created by 진성준 on 2021/08/11.
//

import UIKit
import BaseKit

class BigBannerCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    
    typealias Model = Module
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.cornerRadius(16.0)
    }

}
