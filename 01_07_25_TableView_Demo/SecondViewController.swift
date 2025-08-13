//
//  SecondViewController.swift
//  01_07_25_TableView_Demo
//
//  Created by Vishal Jagtap on 13/08/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var menuItemNameLabel: UILabel!
    var menuItemNameContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractDataAndBind()
        
    }
    
    func extractDataAndBind(){
        self.menuItemNameLabel.text = menuItemNameContainer
    }
}
