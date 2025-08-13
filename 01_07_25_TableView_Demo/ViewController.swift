//
//  ViewController.swift
//  01_07_25_TableView_Demo
//
//  Created by Vishal Jagtap on 08/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var studentTableView: UITableView!
    var menuItems = [MenuItem(menuItemId: 10, menuItemName: "VadaPav", menuItemDescription: "Crispy Tasty Vada Pav"),
                     MenuItem(menuItemId: 21, menuItemName: "Misal", menuItemDescription: "Yummy misal Paav"),
                     MenuItem(menuItemId: 30, menuItemName: "Spring Roll", menuItemDescription: "Crisy Chilly Spring Roll"),
                     MenuItem(menuItemId: 45, menuItemName: "Lassi", menuItemDescription: "Yummy Lassi"),
                     MenuItem(menuItemId: 29, menuItemName: "Biryani", menuItemDescription: "Delicious Biryani"),
                     MenuItem(menuItemId: 11, menuItemName: "VadaPav", menuItemDescription: "Crispy Tasty Vada Pav"),
                     MenuItem(menuItemId: 23, menuItemName: "Misal", menuItemDescription: "Yummy misal Paav"),
                     MenuItem(menuItemId: 34, menuItemName: "Spring Roll", menuItemDescription: "Crisy Chilly Spring Roll"),
                     MenuItem(menuItemId: 46, menuItemName: "Lassi", menuItemDescription: "Yummy Lassi"),
                     MenuItem(menuItemId: 91, menuItemName: "Biryani", menuItemDescription: "Delicious Biryani")
    ]
    
    var number = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTableView()
    }
    
    func initializeTableView(){
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
}

//MARK : Implementation of DataSource Methods
extension ViewController : UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return number
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.studentTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        //        cell.textLabel!.text = "Student -- \(indexPath.section) --- \(indexPath.row)"
        cell.textLabel!.text = menuItems[indexPath.row].menuItemName
        cell.backgroundColor = .orange
        return cell
    }
}

//MARK : Implementation of Delegate Methods
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.section) -- \(indexPath.row)")
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondViewController.menuItemNameContainer = menuItems[indexPath.row].menuItemName
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
