//
//  ItemCell.swift
//  Expo1900
//
//  Created by Terry Lee on 2021/07/07.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shortDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(data: Item) {
        nameLabel.text = data.name
        shortDescriptionLabel.text = data.shortDescription
        itemImage.image = UIImage(named: data.imageName)
    }
}
