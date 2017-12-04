//
//  BiodataTableViewCell.swift
//  RPL 1
//
//  Created by Master on 2/11/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class BiodataTableViewCell: UITableViewCell {

    @IBOutlet weak var LabelName: UILabel!
    @IBOutlet weak var LabelAddress: UILabel!
    @IBOutlet weak var LabelBirth: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
