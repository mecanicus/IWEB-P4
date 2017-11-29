//
//  TypeTableViewCell.swift
//  pokedex_fc
//
//  Created by Carlos Villa on 13/11/2017.
//  Copyright © 2017 Carlos Fernando. All rights reserved.
//

import UIKit

class TypeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var typeImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var race: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
