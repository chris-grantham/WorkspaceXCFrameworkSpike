//
//  SDK.swift
//  
//
//  Created by Christopher Grantham on 21/11/2023.
//

import Foundation

public class SDK {
	public static let sharedInstance = SDK()
	
	private init() { }
	
	public func greet() {
		print("Greetings from FrameworkB.SDK!")
	}
}
