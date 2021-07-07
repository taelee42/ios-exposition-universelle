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
    @IBOutlet weak var flagImage1: UIImageView!
    @IBOutlet weak var flagImage2: UIImageView!
    
    fileprivate func initializeMainViewData() {
        let parsedMainViewData = try? JSONParser.parse(from: "exposition_universelle_1900", to: Exposition.self).get()
        
        titleLabel.text = parsedMainViewData?.title
        posterImage.image = UIImage(named: "poster")
        visitorsLabel.text = String((parsedMainViewData?.visitors)!)
        durationLabel.text = parsedMainViewData?.duration
        locationLabel.text = parsedMainViewData?.location
        descriptionLabel.text = parsedMainViewData?.description
        flagImage1.image = UIImage(named: "flag")
        flagImage2.image = UIImage(named: "flag")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeMainViewData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}

