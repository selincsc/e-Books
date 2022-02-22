//
//  ForgotPAsswordViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Alamofire
import SwiftyJSON
class ForgotPAsswordViewController: MyController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var view_outlet: UIView!
    
    @IBAction func close_button_action(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBOutlet weak var textfield_outlet: UITextField!
    
    @IBAction func send_button_action(_ sender: Any) {
            
            let parameters: Parameters = [
                "email" : textfield_outlet.text ?? "",
            ]
            
            let url = apiURL + "/sifremiUnuttum"
            
            Alamofire.request(url.toUTF8, method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON {[self]
                response in
                switch response.result {
                case .success(let value):
                    
                    let json = JSON(value)
                    Swift.print(json);
                    
                    if json["isSuccess"].boolValue{
                        messageBox(title: json["desc"]["baslik"].stringValue, message: json["desc"]["mesaj"].stringValue,buttonTitle: json["desc"]["positive"].stringValue,isDismiss: true)
                    }else{
                        messageBox(title: json["desc"]["baslik"].stringValue, message: json["desc"]["mesaj"].stringValue,buttonTitle: json["desc"]["positive"].stringValue)
                    }
                    
                case .failure(let error):
                    Swift.print(error)
                }
            }
            
    }
    
    
    


    
    


}


   

