//
//  CustomCollectionViewController.swift
//  remind me
//
//  Created by Sam on 30/06/17.
//  Copyright © 2017 Sam. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController {
	
	var reminders = ["hello", "hi", "how are you?", "What are you doing", "Thanks"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		
		return reminders.count
	}
	
	override func numberOfSections(in collectionView: UICollectionView) -> Int {
		
		return 1
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		guard let cell = self.collectionView?.dequeueReusableCell(withReuseIdentifier: "reminderCellID", for: indexPath) as? ReminderCell else {
			return UICollectionViewCell()
		}
		
		cell.reminderText.text = reminders[indexPath.row]
		
		return cell
	}
	
	
	override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		
		let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
		
		let VC = storyBoard.instantiateViewController(withIdentifier: "DetailsVCID") as! DetailsViewController
		
		VC.data = reminders[indexPath.row]
		
		self.navigationController?.present(VC, animated: true, completion: nil)
	}
	
}
