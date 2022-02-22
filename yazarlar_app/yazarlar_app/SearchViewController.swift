//
//  SearchViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit

class SearchViewController: MyController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    @IBOutlet weak var footer_view_outlet: UIView!{
        didSet{
            footer_view_outlet.backgroundColor = Color._FFFFFF
        }
    }
    @IBOutlet weak var baslik_label_outlet: UILabel!
    @IBAction func suanokunan_button_action(_ sender: Any) {
        showVC(identifierName: "ViewController")
    }
    @IBAction func kitaplik_button_action(_ sender: Any) {
        showVC(identifierName: "WritersViewController")
    }
    @IBAction func kitapci_button_action(_ sender: Any) {
        showVC(identifierName: "AboutViewController")
    }
    @IBAction func search_button_action(_ sender: Any) {
    }
    
    @IBAction func profile_button_action(_ sender: Any) {
        showVC(identifierName: "ProfileViewController")
        
    }
    
    
   

}
