//
//  ViewController.swift
//  01_07_25_TableView_Demo
//
//  Created by Vishal Jagtap on 08/08/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var studentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.studentTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = "Student -- \(indexPath.section) --- \(indexPath.row)"
        cell.backgroundColor = .orange
        return cell
    }
}
