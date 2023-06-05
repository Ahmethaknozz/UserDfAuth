//
//  ViewController.swift
//  userdefaultilegirisyapmaapp
//
//  Created by ahmet hakan öz on 19.02.2023.
//
// 218. video  eger önceden giris yapip cıkıs yapilmadiysa her girdigimde bizden kadi ve sifre istemeyecek
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var kullaniciaditf: UITextField!
    @IBOutlet weak var sifretf: UITextField!
    @IBOutlet weak var girisbilgi: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kadi") ?? "bos"
        let sifre = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && sifre != "bos"{  // iceriye bir veri kaydedilmisse yani bos degilse
            performSegue(withIdentifier:"giristoanasayfa" , sender: nil)
            
        }
        
        
    }
    
    
    @IBAction func girisbutton(_ sender: Any) {
        
        if let ka = kullaniciaditf.text , let s = sifretf.text {
            
            let ka1 = "abc"
            let s1 = "123"
            
            if ka == ka1 && s == s1{
                
                d.set(ka, forKey: "kadi")  // kadi ni kayıt etti
                d.set(s, forKey: "sifre")  // sifreyi kayit ettik
                girisbilgi.text = "Hoşgeldin \(ka)"
                performSegue(withIdentifier: "giristoanasayfa", sender: nil)  // bu kayıtlar yapıldıktan sonra diger sayfaya gecis yaptirdik
                
            }
            else{
                girisbilgi.text = "Hatalı Giriş"
            }
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    
    
    @IBAction func geciss(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 1{
            
            performSegue(withIdentifier: "geciss", sender: nil)
            
        }
        
    }
    
}
