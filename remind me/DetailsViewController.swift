//
//  ViewController.swift
//  remind me
//
//  Created by Sam on 30/06/17.
//  Copyright © 2017 Sam. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
	
	var data: String?

	@IBOutlet weak var reminderDetailsText: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	
		reminderDetailsText.text = data!
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func closeView(_ sender: Any) {
		self.dismiss(animated: true, completion: nil)
	}
	
}

