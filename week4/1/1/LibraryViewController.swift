//
//  ViewController.swift
//  1
//
//  Created by 李芫萱 on 2024/2/4.
//

import UIKit

class LibraryViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 100.0
    }
    
    // MARK: - Data Source
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if section == 0 {
                return 10
            } else if section == 1 {
                return 5
            } else {
                return 0
            }
        }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let label = "This is section \(indexPath.section), row \(indexPath.row)"
        
        cell.textLabel?.text = label
        return cell
    }
}

// MARK: - 第二題
/*
 
 2.There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.
 
 When calling reloadData(), the table view is asked to go back to fetch the data again, in order to check if there're new changes and updates about the data source, and thus display it to the UI.
 
 (The following main methods will be called:)
 func tableView(UITableView, numberOfRowsInSection: Int) -> Int
 func tableView(UITableView, cellForRowAt: IndexPath) -> UITableViewCell
 
 (The following main methods will be called if implemented:)
 func numberOfSections(in: UITableView) -> Int
 func tableView(UITableView, titleForHeaderInSection: Int) -> String?
 func tableView(UITableView, titleForFooterInSection: Int) -> String?

 Their sequences:
 1. check for sections
 func numberOfSections(in: UITableView) -> Int
    ask the data source to return the number of sections to display. The default will be one section if this method is not implemented.
 
 2. check for rows
 func tableView(UITableView, numberOfRowsInSection: Int) -> Int
 func tableView(UITableView, titleForHeaderInSection: Int) -> String?
 func tableView(UITableView, titleForFooterInSection: Int) -> String?
 
 3. Inside the row
 func tableView(UITableView, cellForRowAt: IndexPath) -> UITableViewCell
 
 */

