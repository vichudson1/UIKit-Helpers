//
//  UIKitFadable-Protocol.swift
//  Health Up Display
//
//  Created by Victor Hudson on 4/6/16.
//  Copyright © 2016 Victor Hudson. All rights reserved.
//

import Foundation
import UIKit

protocol UIKitFadeable: class {
	var alpha: CGFloat { get set }
}

extension UIKitFadeable {
	func fadeOut(animationDuration duration: Double = 0.5) {
		UIView.animate(withDuration: duration, animations: { 
			self.alpha = 0.0
		}) 
	}
	
	func fadeIn(animationDuration duration: Double = 0.5) {
		UIView.animate(withDuration: duration, animations: {
			self.alpha = 1.0
		}) 
	}
}
