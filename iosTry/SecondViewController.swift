//
//  SecondViewController.swift
//  iosTry
//
//  Created by philips on 25/05/20.
//  Copyright © 2020 philips. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var postss = Array<posts>()
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        postss.count
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
  
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var tableCell = tableView.dequeueReusableCell(withIdentifier: "newCell", for: indexPath) as! TableViewCell
        
        print( postss[indexPath.row].title)
        tableCell.myLabelTitle.text = postss[indexPath.row].title
        tableCell.myLabelId.text = String(postss[indexPath.row].body)
        return tableCell
    }
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        let nib = UINib(nibName: "TableViewCell",bundle: nil)
       
        tableView.register(nib, forCellReuseIdentifier: "tableCell")
        tableView.delegate = self
        tableView.dataSource = self
        
       // print(postss[0].title! as Any)
       }
    
}
