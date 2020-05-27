//
//  ViewController.swift
//  iosTry
//
//  Created by philips on 25/05/20.
//  Copyright © 2020 philips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var postss = Array<posts>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Determine what the segue destination is
        if segue.destination is SecondViewController
        {
            let vc = segue.destination as? SecondViewController
            vc?.postss = self.postss
        }
    }
    
    @IBAction func navigateToScreenTwo(_ sender: Any) {
        
        let strr = JsonPlaceholder();
        
        strr.performRequest(url1: strr.getUrl()) {result in switch result {
        case .failure(let error):
            print(error)
            
        case .success(let data):
            strr.parseJsonREsponse(resData:data){
                result in switch result {
                case .failure(let error):
                    print(error)
                    
                case .success(let data):do {
                    self.postss = data as Array<posts>
                    
                    print(data[0].title as Any)
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "goToScreenSecond", sender: self)
                    }
                    
                    }
                    
                    
                }
                // now use data here
            }}
            
            //  self.performSegue(withIdentifier: "goToScreenSecond", sender: self)
            
        }
        
        
        //
    }
}

