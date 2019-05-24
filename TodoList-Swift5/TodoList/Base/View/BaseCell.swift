//
//  BaseCell.swift
//  TodayMind
//
//  Created by cyan on 2017/2/16.
//  Copyright © 2017 cyan. All rights reserved.
//

import UIKit
import TDKit

class BaseCell: UITableViewCell {
  
  static let identifier = "BaseCell"
  
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: .value1, reuseIdentifier: reuseIdentifier)
    textLabel?.textColor = Specs.color.tint
    textLabel?.font = Specs.font.large
    detailTextLabel?.font = Specs.font.large
    selectedBackgroundView = UIView(color: Specs.color.lightGray)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
