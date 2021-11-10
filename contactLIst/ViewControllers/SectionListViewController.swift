//
//  SectionListViewController.swift
//  contactLIst
//
//  Created by Alisa Ts on 09.11.2021.
//

import UIKit

class SectionListViewController: UITableViewController {
    private let personsList = Person.getPersonList()
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullname
    }
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "header",
                                                 for: indexPath)
        
        let person = personsList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "phone")
            content.text = String(person.phone)
        case 1:
            content.image = UIImage(systemName: "tray")
            content.text = person.email
        default:
            break
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
