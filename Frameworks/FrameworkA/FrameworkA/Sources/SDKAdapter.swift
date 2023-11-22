//
//  SDKAdapter.swift
//  
//
//  Created by Christopher Grantham on 21/11/2023.
//

import Foundation

@_implementationOnly import FrameworkB

public class SDKAdapter {
	
	private let sdk: SDK = .sharedInstance
	
	public init() {
		sdk.greet()
	}
}
