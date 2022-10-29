//
//  ContentView.swift
//  Weather
//
//  Created by Lin Werle on 10/28/22.
//

import SwiftUI

struct ContentView: View {
	
	@State var weatherDetailList = [WeatherDetails]()
	var body: some View {
		List{
			ForEach(weatherDetailList, id: \.id) { item in
				VStack(alignment: .leading){
					Text(item.headline)
						.font(.headline)
					Text(item.description)
				}
			}
		}
		.task {
			await loadData()
		}
	}
	
	func loadData() async {
		guard let url = URL(string: "https://api.weather.gov/alerts/active?area=TX") else {
			print("Invalid URL ")
			return
		}
		
		do {
			let (data, _) = try await URLSession.shared.data(from: url)
			if let response = try? JSONDecoder().decode(Response.self, from: data) {
				self.weatherDetailList = response.weatherList.compactMap{ $0.details }
			}
		} catch {
			print("Invalid data")
		}
		/*
		do {
			let response = try JSONDecoder().decode(Response.self, from: data)
				self.features = response.features
			}
			
		} catch let jsonError as NSError {
			print("JSON decode failed: \(jsonError.localizedDescription)")
		}
		 */
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

