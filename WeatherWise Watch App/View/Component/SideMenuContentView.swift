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
                
                
                NavigationLink(destination: AboutUsView()) {
                    Text("About Us")
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                       
                }
                .buttonStyle(BorderlessButtonStyle())

                    
                }
            .frame(width: 90, height: 50)
               

            
        }
    }
}

#Preview {
    SideMenuContentView()
}
