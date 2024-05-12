//
//  AboutUsView.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 12/05/2024.
//

import SwiftUI

struct AboutUsView: View {
    let explain = "Welcome to WeatherWise, your trusted companion \n for weather updates on the go! Designed exclusive\nly for watchOS, WeatherWise provides you with real\n-time weather forecasts and conditions right at \nyour fingertips. Whether you're planning your day, checking for rain or shine, or simply staying informed about the weather around you, WeatherWise has you covered. With sleek design and intuitive navigation, it's never been easier to stay ahead of the weather. Download WeatherWise now and make every day a breeze!"
    var body: some View {
        ZStack{
            Color(backgroundColor)
                .ignoresSafeArea()
            
            VStack(content: {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(greenishColor)
                    .frame(width: 160, height: 60)
                    .offset(y: -15)
                    .overlay{
                        VStack{
                            Text("Our Developer")
                                .foregroundColor(.black)
                                .font(.system(size: 10))
                                .bold()
                                .underline()
                                .offset(y:-22)
                            
                            
                            HStack(spacing:5,content: {
                                VStack{
                                    Image(systemName: "person.circle")
                                        .foregroundColor(.black)
                                    Text("Abinash Bhattari")
                                        .font(.system(size: 6))
                                        .foregroundColor(.black)
                                    
                                    Text("IOs Developer")
                                        .font(.system(size: 5))
                                        .foregroundColor(.black)
                                }
                                .offset(x:1,y:-18)
                                
                                VStack{
                                    Image(systemName: "person.circle")
                                        .foregroundColor(.black)
                                    Text("Manjil Khoju")
                                        .font(.system(size: 6))
                                        .foregroundColor(.black)
                                    
                                    Text("IOs Developer")
                                        .font(.system(size: 5))
                                        .foregroundColor(.black)
                                   
                                }
                                .offset(x: 1,y:-18)
                                
                                VStack{
                                    Image(systemName: "person.circle")
                                        .foregroundColor(.black)
                                    Text("Paurakh Saud")
                                        .font(.system(size: 6))
                                        .foregroundColor(.black)
                                    
                                    Text("IOs Developer")
                                        .font(.system(size: 5))
                                        .foregroundColor(.black)
                                   
                                }
                                .offset(x: 5,y:-18)
                            })
                        }
                    }
                   
                
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(greenishColor)
                    .frame(width: 160, height: 110)
                    .offset(y: -15)
                    .overlay{
                        Text(explain)
                            .font(.system(size: 6))
                            .foregroundColor(.black)
                            .offset(x: 3,y:-24)
                        
                        Text("-Weather wise Developer")
                            .foregroundColor(.black)
                            .font(.system(size: 6))
                            .offset(x: 29,y:29)
                    }
            })
        }
    }
}

#Preview {
    AboutUsView()
}
