//
//  SettingTableViewCell.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    @IBOutlet weak var view_outlet: UIView!
    @IBOutlet weak var label_outlet: UILabel!
    @IBOutlet weak var button_outlet: UIButton!
    @IBOutlet weak var image_view_outlet: UIImageView!
}
