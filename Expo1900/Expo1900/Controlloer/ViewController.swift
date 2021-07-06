//
//  Expo1900 - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let parsedMainViewData = try? JSONParser.parse(from: "exposition_universelle_1900", to: Exposition.self).get() else {
            return
        }
        
    

    }
}

