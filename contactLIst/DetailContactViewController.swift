//
//  DetailContactViewController.swift
//  contactLIst
//
//  Created by Alisa Ts on 09.11.2021.
//

import UIKit

class DetailContactViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullname
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }

}
