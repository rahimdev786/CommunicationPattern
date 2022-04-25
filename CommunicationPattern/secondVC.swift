//
//  secondVC.swift
//  CommunicationPattern
//
//  Created by arshad on 4/25/22.
//

import UIKit

class secondVC: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var actor: UITextField!
    var delegate:PassData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func back(_ sender: Any) {
        delegate?.name(message: name.text!)
        delegate?.actor(message: actor.text!)
        self.navigationController?.popViewController(animated: true)
    }
    
}
