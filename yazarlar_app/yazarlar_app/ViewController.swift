//
//  ViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 20.02.2022.
//

import UIKit
import Kingfisher
import

class ViewController: MyController {

    @IBOutlet weak var header_view_outlet: view_desing!
    @IBOutlet weak var baslik_label_outlet: UILabel!{
        baslik_label_outlet.font = UIFont (name: "HelveticaNeue-UltraLight", size: 50)
    }
    @IBOutlet weak var label_outlet: UILabel!{
        label_outlet.text = "Bugünün Okuma Performansı"
        label_outlet.textColor = Color._4595BF
    }
    
    
    
    
    @IBOutlet weak var footer_view_outlet: view_desing!
    
    
    @IBOutlet weak var profile_image_outlet: AnimatedImageView!
    
    @IBOutlet weak var profile_button_action: UIButton!
    
    @IBAction func suanokunan_button_action(_ sender: Any) {
        showVC(identifierName: "ViewController")
    }
    @IBAction func kitaplik_button_action(_ sender: Any) {
    }
    @IBAction func kitapci_button_action(_ sender: Any) {
    }
    @IBAction func search_button_action(_ sender: Any) {
    }
    
    
    @IBOutlet weak var middle_view_outlet: view_desing!
    
    @IBOutlet weak var middle_label1_outlet: UILabel!{
        didSet{
            middle_label1_outlet.text = "Kurgu ve Edebiyat"
        }
    }
    
    @IBAction func kahve_kurgu_button_action(_ sender: Any) {
    }
    
    
    @IBOutlet weak var middle_label2_outlet: UILabel!{
        didSet{
            middle_label2_outlet.text = "Araştırma ve İnceleme"
        }
    }
    
    @IBAction func tarot_arastirma_button_action(_ sender: Any) {
    }
    
    @IBOutlet weak var middle_label3_outlet: UILabel!{
        didSet{
            middle_label2_outlet.text = "Sorgulama ve Eleştirme"
        }
    }
    @IBAction func melek_sorgulama_button_action(_ sender: Any) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

extension ViewController{
    
}
