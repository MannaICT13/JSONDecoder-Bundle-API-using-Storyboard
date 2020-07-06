//
//  Bundle.swift
//  JSONDecoder Bundle API using Storyboard
//
//  Created by Md Khaled Hasan Manna on 7/7/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import Foundation

extension Bundle{
    
    func decode<T: Codable>(_ file : String) -> T {
        
        guard let url = url(forResource: file, withExtension: nil) else{
            fatalError()
        }
        guard let data = try? Data(contentsOf: url) else{
            fatalError()
        }
        
      let loadData = try! JSONDecoder().decode(T.self, from: data)
    
        return loadData
    }
    
    
}
