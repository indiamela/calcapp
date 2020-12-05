//
//  CustomCell.swift
//  ChatApp1
//
//  Created by 楠瀬大志 on 2020/11/29.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var icomImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
