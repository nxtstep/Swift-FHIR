//
//  FHIRElement+Utilities.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 8/14/15.
//  2015, SMART Platforms.
//

import Foundation
#if !NO_MODEL_IMPORT
import Models
#endif


public extension FHIRPrimitive {
	
	/**
	Returns an array of `Extension` elements for the given extension URL, if any.
	
	- parameter forURI: The URI defining the extension on the receiver
	*/
	func extensions(forURI uri: String) -> [Extension]? {
		return extension_fhir?.filter() { return $0.url?.string == uri }
	}
}


public extension Element {
	
	/**
	Returns an array of `Extension` elements for the given extension URL, if any.
	
	- parameter forURI: The URI defining the extension on the receiver
	*/
	final func extensions(forURI uri: String) -> [Extension]? {
		return extension_fhir?.filter() { return $0.url?.string == uri }
	}
}


public extension DomainResource {
	
	/**
	Returns an array of `Extension` elements for the given extension URL, if any.
	
	- parameter forURI: The URI defining the extension on the receiver
	*/
	final func extensions(forURI uri: String) -> [Extension]? {
		return extension_fhir?.filter() { return $0.url?.string == uri }
	}
	
	/**
	Returns an array of `Extension` elements for the given modifier extension URL, if any.
	
	- parameter forURI: The URI defining the modifier extension on the receiver
	*/
	final func modifierExtensions(forURI uri: String) -> [Extension]? {
		return modifierExtension?.filter() { return $0.url?.string == uri }
	}
}

