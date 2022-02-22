//
//  WritersViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON

class WritersViewController: MyController, UITableViewDataSource, UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBOutlet weak var footer_view_outlet: UIView!{
        didSet{
            footer_view_outlet.backgroundColor = Color._FFFFFF
        }
    }
    @IBOutlet weak var header_view_outlet: view_desing!
    @IBOutlet weak var baslik_label_outlet: UILabel!
    @IBAction func suanokunan_button_action(_ sender: Any) {
        showVC(identifierName: "ViewController")
    }
    @IBAction func kitaplik_button_action(_ sender: Any) {
    }
    @IBAction func kitapci_button_action(_ sender: Any) {
    }
    @IBAction func search_button_action(_ sender: Any) {
    }

    @IBOutlet weak var table_view_outlet: UITableView!{
        didSet{
            table_view_outlet.dataSource = self
            table_view_outlet.delegate = self
            table_view_outlet.rowHeight = 112
        }
    }
    
}
extension WritersViewController{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        getfalci_request_json(id: falcilar["data"][indexPath.item]["falci_id"].stringValue)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return falcilar["data"].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table_view_outlet.dequeueReusableCell(withIdentifier: "WritersTableViewCell",for: indexPath) as! WritersTableViewCell
        Url_To_Image(url: imageBaseURL + falcilar ["data"][indexPath.item]["falci_img"].stringValue, imageView: cell.image_view_outlet)
        cell.image_view_outlet.makeRounded()
        
        cell.name_label_outlet.text = falcilar["data"][indexPath.item]["falci_name"].stringValue
        cell.kredi_label_outlet.text = falcilar["data"][indexPath.item]["kredi"].stringValue
        
        if falcilar["data"][indexPath.item]["oneCikar"].boolValue == true{
            cell.onecikan_button_outlet.isHidden = false
        }else{
            cell.onecikan_button_outlet.isHidden = true
        }
        if falcilar["data"][indexPath.item]["is_sesli_fal"].boolValue == true{
            cell.mic_button_outlet.isHidden = false
        }else{
            cell.mic_button_outlet.isHidden = true
        }
        return cell
    }
}
extension WritersViewController{
        //ALAMOFIRE JSON
        func getfalci_request_json(id : String){
            let parameters : Parameters = [
                "falci_id":id ,
            ]
            
            let url = apiURL + "/getFalci"
            
            Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { [self]
                response in
                
                switch response.result {
                case .success(let value):
                    
                    falci_detay = JSON(value)
                    showVC(identifierName: "AboutViewController")

                case .failure(let error):
                    Swift.print(error)
                }
            }
        }
    }


