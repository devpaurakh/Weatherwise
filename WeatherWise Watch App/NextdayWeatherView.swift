//
//  NextdayWeatherView.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 29/04/2024.
//

import SwiftUI

struct NextdayWeatherView: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            
            VStack{
                RoundedRectangle(cornerRadius: 10)
                                .fill(.blue)
                                .frame(width: 160, height: 81)
                
                
                RoundedRectangle(cornerRadius: 10)
                                .fill(.red)
                                .frame(width: 160, height: 50)
            }
            Spacer()
            
            VStack{
                
            }
            
        }
    }
}

#Preview {
    NextdayWeatherView()
}
