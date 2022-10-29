//
//  Model.swift
//  Weather
//
//  Created by Lin Werle on 10/28/22.
//

import Foundation

struct Response: Codable {
	let features: [Feature]
}

struct Feature: Codable {
	let id: String
	let properties: Properties
}


struct Properties: Codable {
	let id: String
	let headline: String
	let senderName: String
	let description: String

}

