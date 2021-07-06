//
//  Expo1900 - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var visitorsLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var hi: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let parsedMainViewData = try? JSONParser.parse(from: "exposition_universelle_1900", to: Exposition.self).get() else {
            return
        }
        titleLabel.text = parsedMainViewData.title
        visitorsLabel.text = String(parsedMainViewData.visitors)
        locationLabel.text = parsedMainViewData.location
        descriptionLabel.text = parsedMainViewData.description
    

    }
}

