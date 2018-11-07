// —————————————————————————————————————————————————————————————————————————
//
//	ViewController.swift
//	Copyright © 2018 gleesh. All rights reserved.
//
// —————————————————————————————————————————————————————————————————————————

import UIKit


class ViewController: UIViewController {

	// MARK: - UIViewController Overrides

	override func viewDidLoad() {
		super.viewDidLoad()

		showButton.setTitle(LocalizedKey.ShowLoremButton.localized, for: .normal)
	}


	// MARK: - Private

	@IBOutlet private weak var showButton: UIButton!

	@IBAction private func didTouchUpInside(showButton: UIButton) {
		let alert = UIAlertController(title: nil, message: LocalizedKey.LoremIpsum.localized, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: LocalizedKey.OK.localized, style: .default, handler: nil))

		present(alert, animated: true, completion: nil)
	}
}


extension LocalizedKey {
	static let ShowLoremButton = LocalizedKey("ShowLoremButtonText", comment: "Show Lorem Ipsum")
	static let LoremIpsum = LocalizedKey("LoremIpsumText", comment: "Lorem ipsum...")
	static let OK = LocalizedKey("OKText", comment: "OK")
}
