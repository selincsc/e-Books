//
//  collectionViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 23.02.2022.
//

import UIKit
import Alamofire
import SwiftyJSON
import Kingfisher
class collectionViewController: MyController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection_post_request_json()
    }
    
    @IBOutlet weak var collectionView_outlet: UICollectionView!{
        didSet{
            collectionView_outlet.delegate = self
            collectionView_outlet.dataSource = self
            
            collectionView_outlet.collectionViewLayout = UICollectionViewFlowLayout()
        }
    }
}
extension collectionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return falcilar["data"].count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView_outlet.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell",for: indexPath) as! CollectionViewCell
        Url_To_Image(url: imageBaseURL + falcilar["data"][indexPath.item]["falci_img"].stringValue, imageView: cell.image_view_outlet)
       
        cell.number_label_outlet.text = String(indexPath.row+1)
        cell.title_label_outlet.text = falcilar["data"][indexPath.item]["falci_name"].stringValue
        
        return cell
    }
}

extension collectionViewController{
    
    //ALAMOFIRE JSON
    func collection_post_request_json(){
        
        let parameters : Parameters = [
            "fal_id": "1",
            "search":"",
            "sort":"normal",
            "start":"0",
            "end":"10"
            
        ]
        let url = apiURL + "/getFalciList"
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { [self]
            response in
            
            switch response.result {
            case .success(let value):
                
                falcilar = JSON(value)
                collectionView_outlet.reloadData()
                print(" girdi: \(falcilar)")

            case .failure(let error):
                Swift.print(error)
        }
        }
}
}
extension collectionViewController {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 170,height: 200)
    }
}
//extension collectionViewController{
    
//func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {

        //let width : CGFloat
        //let height : CGFloat

       // if indexPath.item == 0 {
            //width = 100
            //height = 100
        //} else {
           // width = 50
            //height = 50
        //}
        //return CGSize(width(), height)
//}
//}

//layoutSection.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
