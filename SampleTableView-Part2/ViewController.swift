//
//  ViewController.swift
//  SampleTableView-Part2
//
//  Created by 渡邊魁優 on 2023/03/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var identifier = ""
        
        switch indexPath.row {
        case 0:
            identifier = "cell1"
        case 1:
            identifier = "cell2"
        case 2:
            identifier = "cell3"
        case 3:
            identifier = "cell4"
        default:
            identifier = "cell5"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier)!
        
        cell.textLabel?.text = "text"
        cell.detailTextLabel?.text = "DetailText"
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

