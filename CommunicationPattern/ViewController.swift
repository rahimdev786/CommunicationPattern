//
//  ViewController.swift
//  CommunicationPattern
//
//  Created by arshad on 4/25/22.
//

import UIKit

class ViewController: UIViewController ,PassData{
    func name(message: String) {
        nameLbl.text! = message
    }
    
    func actor(message: String) {
        actorLbl.text! = message
    }
    

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var actorLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    
    @IBAction func goToNext(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! secondVC
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

