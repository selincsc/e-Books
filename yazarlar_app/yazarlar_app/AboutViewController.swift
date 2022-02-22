//
//  AboutViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Kingfisher
class AboutViewController: MyController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBOutlet weak var footer_view_outlet: UIView!{
        didSet{
            footer_view_outlet.backgroundColor = Color._FFFFFF
        }
    }
    @IBAction func suanokunan_button_action(_ sender: Any) {
        showVC(identifierName: "ViewController")
    }
    @IBAction func kitaplik_button_action(_ sender: Any) {
        showVC(identifierName: "WritersViewController")
    }
    @IBAction func kitapci_button_action(_ sender: Any) {
    }
    @IBAction func search_button_action(_ sender: Any) {
    }
    @IBOutlet weak var name_label_outlet: UILabel!{
        didSet{
            name_label_outlet.text = falci_detay["data"]["falci_name"].stringValue
        }
    }
    @IBOutlet weak var image_view_outlet: AnimatedImageView!{
        didSet{
            Url_To_Image(url: imageBaseURL + falci_detay["data"]["falci_img"].stringValue , imageView: image_view_outlet)
            image_view_outlet.makeRounded()
        }
    }
    @IBOutlet weak var onecikan_outlet: button_desing!{
        didSet{
            if falcilar["data"]["is_sesli_fal"].boolValue == true{
                onecikan_outlet.isHidden = false
            }else{
                onecikan_outlet.isHidden = true
            }
        }
    }
    @IBOutlet weak var about_label_outlet: UILabel!{
    didSet{
        about_label_outlet.text = falci_detay["data"]["desc"].stringValue.htmlToString
        about_label_outlet.layer.borderWidth = 1
        about_label_outlet.layer.borderColor = Color._EFF4F6.cgColor
    }
}

    
}


