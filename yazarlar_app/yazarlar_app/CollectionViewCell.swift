//
//  CollectionViewCell.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 23.02.2022.
//

import UIKit
import Kingfisher
class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var image_view_outlet: AnimatedImageView!
    @IBOutlet weak var title_label_outlet: UILabel!
    
    @IBOutlet weak var view_outlet: UIView!{
        didSet{
            view_outlet.layer.borderWidth = 1
            view_outlet.layer.borderColor = Color._A787CF.cgColor
        }
    }
    @IBOutlet weak var number_label_outlet: UILabel!
    
    
}
