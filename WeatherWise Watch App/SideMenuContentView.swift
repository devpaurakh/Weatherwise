//
//  SideMenuContentView.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 29/04/2024.
//

import SwiftUI

struct SideMenuContentView: View {
    var body: some View {
        ZStack{
            VStack{
                Image("logo")
                    .resizable()
                    .frame(width: 60,height: 60)
                
                    Button("About Us") {}
                        .buttonStyle(.borderedProminent)
                        .font(.system(size: 15))
                        .foregroundColor(backgroundColor)
                }
            .frame(width: 90, height: 50)
               

            
        }
    }
}

#Preview {
    SideMenuContentView()
}
