//
//  Exposition.swift
//  Expo1900
//
//  Created by YongHoon JJo on 2021/07/06.
//

import UIKit

struct Exposition: Decodable {
    let title: String
    let visitors: Int
    let location: String
    let duration: String
    let description: String
    
    var image: UIImage? {
        return UIImage(named: ImageAsset.poster)
    }
}
