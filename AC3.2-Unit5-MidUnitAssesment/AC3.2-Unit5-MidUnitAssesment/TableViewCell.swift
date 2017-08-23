//
//  TableViewCell.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Harichandan Singh on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    //MARK: - Properties
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
