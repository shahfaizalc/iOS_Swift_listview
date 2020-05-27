//
//  TableViewCell.swift
//  iosTry
//
//  Created by philips on 26/05/20.
//  Copyright © 2020 philips. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var myLabelTitle: UILabel!
    
    @IBOutlet weak var myLabelId: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
