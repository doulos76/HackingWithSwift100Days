//
//  FlagCell.swift
//  Flages
//
//  Created by dave76 on 11/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

import UIKit

class FlagCell: UITableViewCell {
  @IBOutlet var flageImageView: UIImageView!
  @IBOutlet var titleLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)    
    // Configure the view for the selected state
  }
}
