//
//  SettingCell.swift
//  Codepath - Week2
//
//  Created by Jaehee Chung on 8/28/17.
//  Copyright © 2017 Jaehee Chung. All rights reserved.
//

import UIKit

class SettingCell: UITableViewCell {

	@IBOutlet var settingSwitch: UISwitch!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // this is similar to making an IBAction
		settingSwitch.addTarget(self, action: #selector(switchValueChanged(filterSwitch:)), for: .valueChanged)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	func switchValueChanged(filterSwitch: UISwitch) {
		print("Switch changed")
	}

}
