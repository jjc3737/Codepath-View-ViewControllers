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
		
		return settingCell
	}
	
}

