//
//  TableViewCell.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Thinley Dorjee on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var recipes: UILabel!
    @IBOutlet weak var url: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
