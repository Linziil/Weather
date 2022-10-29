//
//  WeatherService.swift
//  Weather
//
//  Created by Lin Werle on 10/29/22.
//

import SwiftUI
/*
class WeatherService: ObservableObject {

	@Published var weatherData = [WeatherDetails]()
	
	let urlString = "https://api.weather.gov/alerts/active?area=TX"
	
	enum FetchError: Error {
		case badRequest
		case badJSON
	}
	
	@available(iOS 15.0, *)
	
	func fetchData() async throws {
		guard let url = URL(string: urlString) else { return }
		let (data, response) = try await URLSession.shared.data(for: URLRequest(url: url))
		guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badRequest }
	
		Task { @MainActor in
			let response = try JSONDecoder().decode(Response.self, from: data)
			self.weatherData = response.weatherList.compactMap { $0.details }
		}
	}
	
}*/
