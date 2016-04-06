//
//  UIKitFadable-Protocol.swift
//  Health Up Display
//
//  Created by Victor Hudson on 4/6/16.
//  Copyright © 2016 Victor Hudson. All rights reserved.
//

import Foundation
import UIKit

protocol UIKitFadeable {
	var alpha: CGFloat { get set }
}

extension UIKitFadeable {
	mutating func fadeOut(animationDuration duration: Double = 0.5) {
		UIView.animateWithDuration(duration) { 
			self.alpha = 0.0
		}
	}
	
	mutating func fadeIn(animationDuration duration: Double = 0.5) {
		UIView.animateWithDuration(duration) {
			self.alpha = 1.0
		}
	}
}