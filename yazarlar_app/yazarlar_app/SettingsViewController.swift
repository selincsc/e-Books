//
//  SettingsViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON
class SettingsViewController: MyController, UITableViewDelegate, UITableViewDataSource {
   
    @IBAction func back_button_action(_ sender: Any) { dismiss(animated: true)
    }
    @IBOutlet weak var username_label_outlet: UILabel!
    @IBOutlet weak var image_view_outlet: AnimatedImageView!
    
    @IBOutlet weak var table_view_outlet: UITableView!{
        didSet{
            table_view_outlet.delegate = self
            table_view_outlet.dataSource = self
            table_view_outlet.rowHeight = 73
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        posts_request_json()
        username_post_request_json(id: user_id)
       
    }
}
extension SettingsViewController{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 8
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = table_view_outlet.dequeueReusableCell(withIdentifier: "SettingTableViewCell",for: indexPath) as! SettingTableViewCell
            cell.label_outlet.text = keywords["setting_page"]["settings"][indexPath.item]["text"].stringValue
            return cell
        }
        
    }
    
extension SettingsViewController{
    //ALAMOFIRE JSON
    func username_post_request_json(id: String){
        let parameters : Parameters = [
            "user_id": id,
        ]
        let url = apiURL + "/getProfil"
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { [self]
            response in
            
            switch response.result {
            case .success(let value):
                
                getProfil = JSON(value)
                print(" settings: \(getProfil)")
                
                username_label_outlet.text = getProfil["data"]["profil_name"].stringValue
               
            case .failure(let error):
                Swift.print(error)
        }
        }
}
}
extension SettingsViewController{
    //ALAMOFIRE JSON
    func posts_request_json(){
        let parameters : Parameters = [:
        
        ]
        let url = apiURL + "/keywords"
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { [self]
            response in
            
            switch response.result {
            case .success(let value):
                
                keywords = JSON(value)
                table_view_outlet.reloadData()
                
            case .failure(let error):
                Swift.print(error)
        }
        }
}
}

