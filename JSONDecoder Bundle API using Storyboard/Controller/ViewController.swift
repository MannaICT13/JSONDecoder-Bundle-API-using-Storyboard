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
    
    var person : [Person] = Bundle.main.decode("person.json")
    //MARK:- Initializers
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    //MARK:- Handler
    

}

