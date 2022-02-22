//
//  LoginViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON

class LoginViewController: MyController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var view1_outlet: UIView!{
        didSet{
            view1_outlet.layer.borderWidth = 1
            view1_outlet.layer.borderColor = UIColor.gray.cgColor
        }
    }
    @IBOutlet weak var header_label_outlet: UILabel!{
        didSet{
            header_label_outlet.text = "Publish to Apple Books"
        }
    }
    @IBOutlet weak var label1_outlet: UILabel!{
        didSet{
            label1_outlet.text = "To upload your EPUB, sign in to iTunes Connect with your Apple ID."
        }
    }
    @IBOutlet weak var label2_outlet: UILabel!{
            didSet{
                label2_outlet.text = "Learn more about publishing to Apple ID. "
                label2_outlet.textColor = Color._0097DA
            }
}
    @IBAction func signin_button_action(_ sender: Any) {
        showVC(identifierName: "SignViewController")
    }
    
    @IBAction func createaccount_action(_ sender: Any) {        showVC(identifierName: "SignViewController")
    }
    @IBAction func continue_button_action(_ sender: Any) {        showVC(identifierName: "SignViewController")

    }
    }


