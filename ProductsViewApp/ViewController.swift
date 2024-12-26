//
//  ViewController.swift
//  ProductsViewApp
//
//  Created by Abhitha Narisetty on 12/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    

    
    
    var products:[[String:String]] = []
    
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        for i in 0..<20{
            let product = ["name":"product \(i)", "desc":"desc \(i)", "image":"image \(i)"]
            products.append(product)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProductTableViewCell
        
        cell?.productname.text = products[indexPath.row]["name"]
        cell?.productdesc.text = products[indexPath.row]["desc"]
        
        return cell ?? UITableViewCell()
        
        
        
    }


}

