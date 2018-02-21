//
//  UITableView + Layout Table Header View.swift
//  Health Up Display
//
//  Created by Victor Hudson on 1/16/17.
//  Copyright © 2017 Victor Hudson. All rights reserved.
//

import UIKit

// https://gist.github.com/marcoarment/1105553afba6b4900c10

extension UITableView {
	
	
	/// Layout a dynamic height tableview header.
	func layoutTableHeaderView() {
		
		guard let headerView = self.tableHeaderView else { return }
		headerView.translatesAutoresizingMaskIntoConstraints = false
		
		let headerWidth = headerView.bounds.size.width;
		let temporaryWidthConstraints = NSLayoutConstraint.constraints(withVisualFormat: "[headerView(width)]",
		                                                               options: NSLayoutFormatOptions(rawValue: UInt(0)),
		                                                               metrics: ["width": headerWidth],
		                                                               views: ["headerView": headerView])
		
		headerView.addConstraints(temporaryWidthConstraints)
		
		headerView.setNeedsLayout()
		headerView.layoutIfNeeded()
		
		let headerSize = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize)
		let height = headerSize.height
		var frame = headerView.frame
		
		frame.size.height = height
		headerView.frame = frame
		
		self.tableHeaderView = headerView
		
		headerView.removeConstraints(temporaryWidthConstraints)
		headerView.translatesAutoresizingMaskIntoConstraints = true
		
	}
}
