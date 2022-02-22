//
//  ProfileViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Alamofire
import SwiftyJSON
class ProfileViewController: MyController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func close_button_action(_ sender: Any) {
        showVC(identifierName: "SearchViewController")
    }
    @IBOutlet weak var name_label_outlet: UILabel!
    
    @IBOutlet weak var email_label_outlet: UILabel!
    

}
extension ProfileViewController{
    
    //ALAMOFIRE JSON
    func username_post_request_json(id: String){
        
        let parameters : Parameters = [
            "user_id": id
        ]
        let url = apiURL + "/getProfil"
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { [self]
            response in
            
            switch response.result {
            case .success(let value):
                
                getProfil = JSON(value)
                print(" settings: \(getProfil)")

                email_label_outlet.text = getProfil["data"]["email"].stringValue
                name_label_outlet.text = getProfil["data"]["profil_name"].stringValue
               


               
            case .failure(let error):
                Swift.print(error)
        }
        }
}
}
