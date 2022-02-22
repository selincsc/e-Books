//
//  SignViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Alamofire
import SwiftyJSON
class SignViewController: MyController {

    @IBOutlet weak var email_textfiels_outlet: UITextField!
    
    @IBOutlet weak var password_textfiels_outlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func eye_button_action(_ sender: Any) { password_textfiels_outlet.isSecureTextEntry.toggle()
    }
    
    @IBAction func forgotpass_button_action(_ sender: Any) {
        
    }
    @IBAction func signin_button_action(_ sender: Any) {
        posts_request_json(email: email_textfiels_outlet.text!, sifre: password_textfiels_outlet.text!)
    }
    
}


extension SignViewController{
    //ALAMOFIRE JSON
    func posts_request_json(email: String, sifre: String){
        let parameters : Parameters = [
            "email": email,
            "pass": sifre
        ]
        let url = apiURL + "/giris"
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { [self]
            response in
            
            switch response.result {
            case .success(let value):
                
                giris = JSON(value)
                if giris["isSuccess"].boolValue == true {
                    
                    user_id = giris["data"]["user_id"].stringValue
                    
                    showVC(identifierName: "ViewController")

                }else{
                       messageBox(title: giris["desc"]["baslik"].stringValue, message: giris["desc"]["mesaj"].stringValue)
                }
            
                
            case .failure(let error):
                Swift.print(error)
        }
        }
}
}
