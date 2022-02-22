//
//  WritersViewController.swift
//  yazarlar_app
//
//  Created by Selin Çağlar on 22.02.2022.
//

import UIKit
import Kingfisher

class WritersViewController: MyController, UITableViewDataSource, UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

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
        }
    }
    
}
extension WritersViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
