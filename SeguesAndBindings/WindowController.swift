//
//  WindowController.swift
//  SeguesAndBindings
//
//  Created by Roberto Machorro on 7/23/19.
//  Copyright © 2019 Unplugged Ideas, LLC. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

	override func windowDidLoad() {
		super.windowDidLoad()
		print("WindowController windowDidLoad")
	}

	override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
		print("WindowController prepare \(segue.identifier ?? "No ID")")
		if let controller = segue.destinationController as? NSWindowController {
			if let view = controller.contentViewController as? DialogViewController {
				view.message = segue.identifier ?? "No ID"
			}
		}
	}

	@IBAction func doManualNoSegue(_ sender: Any) {
		print("WindowController doManualNoSegue")
		let storyboard = NSStoryboard(name: "Main", bundle: nil)
		if let controller = storyboard.instantiateController(withIdentifier: "Segue Dialog") as? NSWindowController {
			if let window = controller.window, let view = window.contentViewController as? DialogViewController {
				view.message = "doManualNoSegue"

				/* This is not worth the hassle...
				let application = NSApplication.shared
				application.runModal(for: window)
				window.close()

				// Would also need to add this in dialog, but not worth the hassle
				let application = NSApplication.shared()
				application.stopModal()
				*/
			}
		}
	}

	@IBAction func doWindowOperation(_ sender: Any) {
		print("WindowController doWindowOperation")
	}

}
