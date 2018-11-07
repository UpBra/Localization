// —————————————————————————————————————————————————————————————————————————
//
//	Localization.swift
//	Copyright © 2018 gleesh. All rights reserved.
//
// —————————————————————————————————————————————————————————————————————————


import Foundation


struct LocalizedKey: RawRepresentable {

	typealias RawValue = String

	let rawValue: RawValue
	let comment: String

	init(rawValue: RawValue) {
		self.init(rawValue, comment: "")
	}

	init(_ rawValue: RawValue, comment: String = "") {
		self.rawValue = rawValue
		self.comment = comment
	}
}


extension LocalizedKey {

	var localized: String { return NSLocalizedString(rawValue, comment: comment) }
}
