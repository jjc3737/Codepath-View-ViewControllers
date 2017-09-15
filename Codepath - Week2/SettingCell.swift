//
//  SettingCell.swift
//  Codepath - Week2
//
//  Created by Jaehee Chung on 8/28/17.
//  Copyright © 2017 Jaehee Chung. All rights reserved.
//

import UIKit

// #1: Declare the delegate protocol
//the @objc is needed here for the protocol to work
@objc protocol SettingCellDelegate {
	//defining delegate functions
	func settingSwitchChanged(settingCell: SettingCell, switchIsOn: Bool)
}

class SettingCell: UITableViewCell {

	@IBOutlet var settingTitle: UILabel!
	@IBOutlet var settingSwitch: UISwitch!

	// #2: Create the delegate variable
	//why does this need to be weak?
	weak var delegate: SettingCellDelegate?
	
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
		// #3: Call the delegate function
		delegate?.settingSwitchChanged(settingCell: self, switchIsOn: filterSwitch.isOn)
	}

}
