//
//  UIKitHidableProtocol.swift
//  Health Up Display
//
//  Created by Victor Hudson on 4/6/16.
//  Copyright © 2016 Victor Hudson. All rights reserved.
//

import Foundation
import UIKit

protocol UIKitHidable: class {
	var isHidden: Bool { get set }
}

extension UIKitHidable {
	func hide() {
		self.isHidden = true
	}
	func show() {
		self.isHidden = false
	}
	
	func hideAnimated(animationDuration duration: Double = 0.5) {
		UIView.animate(withDuration: duration, animations: {
			self.isHidden = true
		}) 
	}
	func showAnimated(animationDuration duration: Double = 0.5) {
		UIView.animate(withDuration: duration, animations: {
			self.isHidden = false
		}) 
	}
}
