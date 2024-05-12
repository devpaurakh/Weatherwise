//
//  WeatherDeatilPage.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 29/04/2024.
//

import SwiftUI

struct WeatherDeatilPage: View {
    @Binding var results:[Forecastday]
    @Binding var cityName:String
    var index:Int
    var body: some View {

            NavigationStack{
                ZStack{
                    Color.init(getWeatherBackgroundColor(code: results[0].day.condition.code))
                        .ignoresSafeArea()
                    VStack{
                        HStack{
                            VStack(alignment:.center,content: {
                                Text("\(getWeatherImage(code: results[0].day.condition.code))")
                                    .font(.system(size: 60))
                                    .offset(y: 10)
                                
                                Text("\(Int(results[0].day.avgtemp_c))°C")
                                    .fontWeight(.bold)
                                    .font(.system(size: 18))
                                    .offset(y: 10)
                            })
                            .padding()
                            Spacer()
                            
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(orange)
                                .overlay{
                                    
                                    VStack(alignment:.leading,spacing: 3 , content: {
                                        Text("\(cityName)")
                                            .font(.system(size: 10))
                                            .bold()
                                            .offset(y: 5)
                                        Text(" Humidity: \(results[0].day.avghumidity)%")
                                            .font(.system(size: 8))
                                            .offset(y: 5)
                                        Text(" Avg: \(Int(results[0].day.avgvis_km))Km")
                                            .font(.system(size: 8))
                                            .offset(y: 5)
                                        Text(" Max-Wind: \(Int(results[0].day.maxwind_kph))Km/h")
                                            .font(.system(size: 8))
                                            .offset(y: 5)
                                        Text(" Rain Chance(%): \(results[0].day.daily_chance_of_rain)%")
                                            .font(.system(size: 8))
                                            .offset(y: 5)
                                        Text(" Contdition: \(results[0].day.condition.text)")
                                            .font(.system(size: 8))
                                            .offset(y: 5)
                                      
                                        
                                        NavigationLink(destination: NextdayWeatherView(results: $results, cityName: $cityName, index: 0)) {
                                            
                                            Image(systemName: "arrow.right.circle.fill")
                                                .resizable()
                                                .frame(width: 18,height: 18)
                                                .offset(y: 5)
                                            
                                            Text("NextDay Forecast")
                                                .font(.system(size: 7))
                                                .bold()
                                                .offset(y: 5)
                                            
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                        
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
                                        .font(.system(size: 9))
                                    
                                    
                                    ScrollView(.horizontal, showsIndicators: false){
                                        
                                        HStack{
                                            
                                            ForEach(results[0].hour){forecast in
                                                
                                                Rectangle()
                                                    .foregroundColor(.blue)
                                                    .overlay{
                                                        VStack(spacing:5, content: {
                                                            Text("\(Int(forecast.temp_c))°C")
                                                                .fontWeight(.bold)
                                                                .font(.system(size: 9))
                                                            
                                                            Text("\(getWeatherImage(code: forecast.condition.code))")
                                                            
                                                            Text("\(getShortTime(time: forecast.time))")
                                                               
                                                                .fontWeight(.bold)
                                                                .font(.system(size: 9))
                                                        })
                                                        
                                                    }
                                                    .frame(width: 50,height:80)
                                                    .cornerRadius(10)
                                                
                                            }
                                        }
                                       
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
       
    }


//#Preview {
//    WeatherDeatilPage()
//}
