//
//  UIKitHidableProtocol.swift
//  Health Up Display
//
//  Created by Victor Hudson on 4/6/16.
//  Copyright © 2016 Victor Hudson. All rights reserved.
//

import Foundation
import UIKit

protocol UIKitHidable {
	var hidden: Bool { get set }
}

extension UIKitHidable {
	mutating func hide() {
		self.hidden = true
	}
	mutating func show() {
		self.hidden = false
	}
	
	mutating func hideAnimated(animationDuration duration: Double = 0.5) {
		UIView.animateWithDuration(duration) { 
			self.hidden = true
		}
	}
	mutating func showAnimated(animationDuration duration: Double = 0.5) {
		UIView.animateWithDuration(duration) {
			self.hidden = false
		}
	}
}