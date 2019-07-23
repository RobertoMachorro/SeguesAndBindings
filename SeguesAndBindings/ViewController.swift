//
//  ViewController.swift
//  SeguesAndBindings
//
//  Created by Roberto Machorro on 7/23/19.
//  Copyright © 2019 Unplugged Ideas, LLC. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		print("ViewController viewDidLoad")
	}

	override var representedObject: Any? {
		didSet {
			// Update the view, if already loaded.
		}
	}
	
	override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
		print("ViewController prepare \(segue.identifier ?? "No ID")")
		if let controller = segue.destinationController as? NSWindowController {
			if let view = controller.contentViewController as? DialogViewController {
				view.message = segue.identifier ?? "No ID"
			}
		}
	}

	@IBAction func doToolbarViewOperation(_ sender: Any) {
		print("This will never show, couldn't bind from toolbar.")
	}

	@IBAction func doManualSegue(_ sender: Any) {
		print("ViewController doManualSegue")
		performSegue(withIdentifier: "viewManualSegue", sender: nil)
	}

}
