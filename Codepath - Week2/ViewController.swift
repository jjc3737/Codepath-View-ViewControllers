//
//  ViewController.swift
//  Codepath - Week2
//
//  Created by Jaehee Chung on 8/28/17.
//  Copyright © 2017 Jaehee Chung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet var tableView: UITableView!
	
	var settingFilters: [Int: Bool] = [Int: Bool]()
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 20
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let settingCell = tableView.dequeueReusableCell(withIdentifier: "settingCell") as? SettingCell else {
			return UITableViewCell()
		}
		
		settingCell.settingSwitch.isOn = settingFilters[indexPath.row] ?? false
		settingCell.label.text = String(indexPath.row)
		
		//set settingCell closure
		settingCell.switchAction = { (isOn: Bool) in
			// since this is within the context, we don't have to get the indexPath separately
			self.settingFilters[indexPath.row] = isOn
		}
		
		return settingCell
	}
	
}

