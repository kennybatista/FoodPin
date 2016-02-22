//
//  DetailTableViewCell.swift
//  FoodPin
//
//  Created by Kenny Batista on 2/21/16.
//  Copyright © 2016 Kenny Batista. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet var fieldLabel : UILabel!
    @IBOutlet var fieldValue : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
