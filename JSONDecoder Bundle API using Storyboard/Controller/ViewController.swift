//
//  ViewController.swift
//  JSONDecoder Bundle API using Storyboard
//
//  Created by Md Khaled Hasan Manna on 7/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    var person = [Person]()
    //var person : [Person] = Bundle.main.decode("person.json")
    
    //MARK:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Bundle.main.decode("person.json")
        print(person.count)
        
        for result in person{
            print(result.name ?? "n/a")
        }
      
    }

    //MARK:- Handler
    

}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PersonCell
        cell.nameLbl.text = person[indexPath.row].name
        cell.deptLbl.text = person[indexPath.row].dept
        cell.cityLbl.text = person[indexPath.row].city
        
        return cell
    }
    
    
    
    
}

