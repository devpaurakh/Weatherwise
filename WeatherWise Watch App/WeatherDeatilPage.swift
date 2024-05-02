//
//  WeatherDeatilPage.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 29/04/2024.
//

import SwiftUI

struct WeatherDeatilPage: View {
    var body: some View {
        ZStack{
            Color(backgroundColor)
                .ignoresSafeArea()
            VStack{
                HStack{
                    VStack{
                        Text("Kathmandu, Nepal")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: 6))
                        
                        Image("sunny")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 51,height: 51)
                        
                        Text("42°C")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: 18))
                    }
                    .padding()
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(orange)
                        .overlay{
                            
                            VStack(spacing: 10 , content: {
                                Text("Tommarrow's Forecast")
                                    
                                    .font(.system(size: 12))
                                    .bold()
                                
                                Image(systemName: "arrow.right.circle.fill")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                            })
                            
                            
                            
                            
                        }
                        .frame(height:100)
                        
                    
                    
                    
                    
                }
                Spacer()
                
                
                Rectangle()
                    .overlay {
                        
                        VStack(alignment: .leading, content: {
                            Text("Today")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .font(.system(size: 6))
                            
                            HStack{
                                
                                Rectangle()
                                    .foregroundColor(.blue)
                                    .overlay{
                                        VStack(spacing: 10, content: {
                                            Text("07°C")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .font(.system(size: 9))
                                            
                                            Image("sunny")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 20,height: 20)
                                            
                                            Text("01 : 00")
                                                .foregroundColor(.white)
                                                .fontWeight(.bold)
                                                .font(.system(size: 9))
                                        })
                                        
                                    }
                                    .frame(height:80)
                                
                                Rectangle()
                                    .foregroundColor(backgroundColor)
                                    .overlay{
                                        VStack(spacing: 10, content: {
                                            Text("07°C")
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .font(.system(size: 9))
                                            
                                            Image("sunny")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 20,height: 20)
                                            
                                            Text("01 : 00")
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .font(.system(size: 9))
                                        })
                                      
                                    }
                                    .frame(height:80)
                                
                                Rectangle()
                                    .foregroundColor(backgroundColor)
                                    .overlay{
                                        
                                        VStack(spacing: 10, content: {
                                            Text("07°C")
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .font(.system(size: 9))
                                            
                                            Image("sunny")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 20,height: 20)
                                            
                                            Text("01 : 20")
                                                .foregroundColor(.black)
                                                .fontWeight(.bold)
                                                .font(.system(size: 9))
                                        })
                                    }
                                    .frame(height:80)
                                
                                
                            }
                            
                        })
                        .padding()
                        
                        
                    }
                    .frame(width: 180, height:100)
                    .cornerRadius(1)
                    .shadow(color: Color.black.opacity(1), radius: 5, x: 0, y: 5)
                
            }
        }
    }
}

#Preview {
    WeatherDeatilPage()
}
