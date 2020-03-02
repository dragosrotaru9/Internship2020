//
//  RestaurantTableViewCell.swift
//  RestaurantsIBM
//
//  Created by DragosRotaru on 28/02/2020.
//  Copyright © 2020 DragosRotaru. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    @IBOutlet weak var restaurantImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
