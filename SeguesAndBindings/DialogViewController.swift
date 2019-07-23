//
//  DialogViewController.swift
//  SeguesAndBindings
//
//  Created by Roberto Machorro on 7/23/19.
//  Copyright © 2019 Unplugged Ideas, LLC. All rights reserved.
//

import Cocoa

class DialogViewController: NSViewController {

	@objc dynamic var message = "Hi"

	override func viewDidLoad() {
		super.viewDidLoad()

		print("DialogViewController viewDidLoad")

		// None of these work...
		title = "Segued Dialog"
		view.window?.title = "Segued Dialog"
		view.window?.contentViewController?.title = "Segued Dialog"
		view.window?.windowController?.windowTitle(forDocumentDisplayName: "Segued Dialog")
	}

}
