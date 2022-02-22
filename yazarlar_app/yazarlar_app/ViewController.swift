//
//  ViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 20.02.2022.
//

import UIKit
import Kingfisher
import Alamofire
import SwiftyJSON

class ViewController: MyController {

    @IBOutlet weak var header_view_outlet: view_desing!
    @IBOutlet weak var baslik_label_outlet: UILabel!
    @IBOutlet weak var label_outlet: UILabel!{
        didSet{ label_outlet.text = "Yeni! Günlük okuma hedefleri ile daha fazla okuyun."
        }
    }
    @IBOutlet weak var footer_view_outlet: view_desing!{
        didSet{
            footer_view_outlet.backgroundColor = Color._FDFDFD
        }
    }
    @IBOutlet weak var profile_image_outlet: AnimatedImageView!
    
    @IBOutlet weak var profile_button_action: UIButton!
    
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
        showVC(identifierName: "SearchViewController")
    }
    
    
    @IBOutlet weak var middle_view_outlet: view_desing!
    
    @IBOutlet weak var middle_label1_outlet: UILabel!{
        didSet{
            middle_label1_outlet.text = "Kurgu ve Edebiyat"
        }
    }
    @IBAction func kahve_kurgu_button_action(_ sender: Any) {
        postrequest_json(fal_id: "1")
    }
    @IBOutlet weak var middle_label2_outlet: UILabel!{
        didSet{
            middle_label2_outlet.text = "Araştırma ve İnceleme"
        }
    }
    @IBAction func tarot_arastirma_button_action(_ sender: Any) {
        postrequest_json(fal_id: "2")
    }
    @IBOutlet weak var middle_label3_outlet: UILabel!{
        didSet{
            middle_label2_outlet.text = "Sorgulama ve Eleştirme"
        }
    }
    @IBAction func melek_sorgulama_button_action(_ sender: Any) {
        postrequest_json(fal_id: "3")

    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}

extension ViewController{
    //ALAMOFIRE JSON
    func postrequest_json(fal_id : String){
        let parameters : Parameters = [
            "fal_id" : fal_id ,
            "search":"",
            "start":"0",
            "end":"30"
        ]
        
        let url = apiURL + "/getFalciList"
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { [self]
            response in
            
            switch response.result {
            case .success(let value):
                
                falcilar = JSON(value)
                showVC(identifierName: "WritersViewController")

            case .failure(let error):
                Swift.print(error)
            }
        }
    }

}
