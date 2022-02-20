//
//  ViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 20.02.2022.
//

import UIKit

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
    
    @IBOutlet weak var middle_label1_outlet: UILabel!
    
    @IBOutlet weak var middle_label2_outlet: UILabel!
    
    @IBOutlet weak var middle_label_outlet: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

