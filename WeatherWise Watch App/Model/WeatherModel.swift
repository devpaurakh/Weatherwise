//
//  WeatherModel.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 12/05/2024.
//

import Foundation

// MARK: - Weather

struct Weather:Codable{
    let location: Location
    var forecast: Forecast
    
}
struct Location:Codable{
    var name: String
}


struct Forecast: Codable {
    
    var forecastday: [Forecastday]
    
}


struct Forecastday: Codable, Identifiable {
    var date_epoch: Int
    var id: Int {date_epoch}
    var hour: [Hour]
    var day:Day
    
}

struct Day: Codable {
    var avgtemp_c: Double
        var maxwind_kph: Double
        var totalprecip_mm: Double
        var daily_chance_of_rain: Int
        var avghumidity: Int
        var uv: Double
        var avgvis_km: Double
        var condition: Condition
}

struct Condition: Codable{
    var text:String
    var code: Int
}

struct Hour:Codable, Identifiable{
    var time_epoch:Int
    var time: String
    var temp_c: Double
    var feelslike_c: Double
    var condition:Condition
    var id:Int{ time_epoch }
}
