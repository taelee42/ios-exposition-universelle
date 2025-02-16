//
//  Expo1900 - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class MainViewController: UIViewController {
    @IBOutlet private weak var titleKRLabel: UILabel!
    @IBOutlet private weak var titleENLabel: UILabel!
    @IBOutlet private weak var mainImageView: UIImageView!
    @IBOutlet private weak var visitorsLabel: UILabel!
    @IBOutlet private weak var locationLabel: UILabel!
    @IBOutlet private weak var durationLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var leftFlagImageView: UIImageView!
    @IBOutlet private weak var rightFlagImageView: UIImageView!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let exposition = try? JSONParser.parse(name: JSONAsset.mainDataName, type: Exposition.self).get() else {
            return
        }
        updateUI(exposition: exposition)
    }
    
    
    
    func updateUI(exposition: Exposition) {
        let numberFommater = NumberFormatter()
        numberFommater.numberStyle = .decimal
        guard let visitors = numberFommater.string(for: exposition.visitors) else {
            return
        }
        let titles = exposition.title.split(separator: "(")
        titleKRLabel.text = "\(titles[0])"
        titleENLabel.text = "(\(titles[1])"
        mainImageView.image = exposition.image
        visitorsLabel.text = "\(visitors) 명"
        locationLabel.text = exposition.location
        durationLabel.text = exposition.duration
        descriptionLabel.text = exposition.description
        leftFlagImageView.image = UIImage(named: "flag")
        rightFlagImageView.image = UIImage(named: "flag")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        appDelegate.shouldSupportAllOrientation = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        appDelegate.shouldSupportAllOrientation = true
    }
}

