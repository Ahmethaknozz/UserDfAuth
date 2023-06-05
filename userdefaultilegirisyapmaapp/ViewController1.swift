//
//  ViewController1.swift
//  userdefaultilegirisyapmaapp
//
//  Created by ahmet hakan öz on 19.02.2023.
//

import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet weak var labelsonuc: UILabel!
    
    let a = UserDefaults.standard
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigationItem.hidesBackButton = true
        
        let kaa = a.string(forKey: "kadi")
        labelsonuc.text = kaa
        
    }
    
    
    
    @IBAction func cikisbutton(_ sender: Any) {
        
        a.removeObject(forKey: "kadi")
        a.removeObject(forKey: "sifre")
    
        exit(-1)  // bu kod bizi ana ekrana atar
    }
    
}
    

    
    

