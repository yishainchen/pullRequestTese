//
//  TableViewCell.swift
//  DemoProject
//
//  Created by yishain chen on 2017/4/25.
//  Copyright © 2017年 AppWorkout. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var viewAcount: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var titleLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
