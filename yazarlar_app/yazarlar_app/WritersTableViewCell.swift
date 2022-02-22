//
//  WritersTableViewCell.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Kingfisher
class WritersTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var view_outlet: UIView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    @IBOutlet weak var kredi_label_outlet: UILabel!
    @IBOutlet weak var name_label_outlet: UILabel!
    @IBOutlet weak var image_view_outlet: AnimatedImageView!
    @IBOutlet weak var mic_button_outlet: UIButton!
    @IBOutlet weak var onecikan_button_outlet: UIButton!
}
