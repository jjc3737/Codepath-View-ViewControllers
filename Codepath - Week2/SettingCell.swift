//
//  SettingCell.swift
//  Codepath - Week2
//
//  Created by Jaehee Chung on 8/28/17.
//  Copyright © 2017 Jaehee Chung. All rights reserved.
//

import UIKit

class SettingCell: UITableViewCell {

	@IBOutlet var label: UILabel!
	@IBOutlet var settingSwitch: UISwitch!
	
	//Closure to communicate between SettingCell and ViewController
	var switchAction: (Bool) -> Void = { (isOn: Bool) in }
	
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	//IBAction instead of addTarget
	@IBAction func onSwitchChanged(_ sender: UISwitch) {
		// Call closure 
		switchAction(sender.isOn)
	}

}
