import SwiftUI

struct NextdayWeatherView: View {
    @Binding var results:[Forecastday]
    @Binding var cityName:String
    var index:Int
    var body: some View {
        ZStack{
            Color.init(getWeatherBackgroundColor(code: results[0].day.condition.code))
                .ignoresSafeArea()
            ScrollView {
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(blueColor)
                        .frame(width: 160, height: 81)
                        .offset(y: -25)
                    HStack(alignment:.top, content: {
                        Text("\(getWeatherImage(code:results[1].day.condition.code))")
                            .font(.system(size: 60))
                        VStack(alignment:.leading,spacing: 3, content: {
                            Text("\(getShortDate(epoch: results[1].date_epoch))")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                            
                            HStack{
                                Text("\(Int(results[1].day.avgtemp_c))°c")
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                
                                Text("/")
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                
                                Text("\(Int(results[1].day.avgtemp_c))°c")
                                    .font(.system(size: 10))
                                    .fontWeight(.light)
                            }
                            
                            Text("\(results[1].day.condition.text)")
                                .font(.system(size: 10))
                            
                            
                        })
                    })
                    .offset(y:-25)
                    
                    
                }
                
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 160, height: 60)
                    .offset(y: -30)
                    .padding()
                    .overlay {
                        HStack(spacing:17, content: {
                            
                            VStack{
                                Image(systemName: "drop")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20))
                                Text("Humidity")
                                    .foregroundColor(.black)
                                    .font(.system(size: 8))
                                
                                Text("\(Int(results[1].day.avghumidity))%")
                                    .foregroundColor(.black)
                                    .font(.system(size: 10))
                                    .bold()
                            }
                            VStack{
                                Image(systemName: "wind")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 25))
                                Text("Wind")
                                    .foregroundColor(.black)
                                    .font(.system(size: 8))
                                
                                Text("\(Int(results[1].day.maxwind_kph))km/h")
                                    .foregroundColor(.black)
                                    .font(.system(size: 10))
                                    .bold()
                            }
                            VStack{
                                Image(systemName: "cloud")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 30))
                                Text("Precip")
                                    .foregroundColor(.black)
                                    .font(.system(size: 8))
                                
                                Text("\(Int(results[1].day.totalprecip_mm))mm")
                                    .foregroundColor(.black)
                                    .font(.system(size: 10))
                                    .bold()
                            }
                        })
                        .offset(y: -29)
                    }
                
                VStack(alignment: .leading, spacing:3, content: {
                    Text("This week")
                        .font(.system(size: 10))
                        .fontWeight(.bold)
                        .offset(x:5)

                    HStack(spacing: 20, content: {
                            Text("\(getShortDate(epoch: results[0].date_epoch))")
                                .font(.system(size: 10))
                            
                            Text("\(Int(results[0].day.avgtemp_c))°c")
                                .font(.system(size: 10))
                            
                            Text("\(getWeatherImage(code:results[0].day.condition.code))")
                        
                        Text("\(results[0].day.condition.text)")
                            .font(.system(size: 9))
                        })
                    
                    HStack(spacing: 20, content: {
                            Text("\(getShortDate(epoch: results[1].date_epoch))")
                                .font(.system(size: 10))
                            
                            Text("\(Int(results[1].day.avgtemp_c))°c")
                                .font(.system(size: 10))
                            
                            Text("\(getWeatherImage(code:results[1].day.condition.code))")
                        
                        Text("\(results[1].day.condition.text)")
                            .font(.system(size: 9))
                        })
                    
                    HStack(spacing: 20, content: {
                            Text("\(getShortDate(epoch: results[2].date_epoch))")
                                .font(.system(size: 10))
                            
                            Text("\(Int(results[2].day.avgtemp_c))°c")
                                .font(.system(size: 10))
                            
                            Text("\(getWeatherImage(code:results[2].day.condition.code))")
                        
                        Text("\(results[2].day.condition.text)")
                            .font(.system(size: 9))
                        })
                    
                   
                    
                    
                    
                    
                    
                    
//                    List(results){forecast in
//                        
//                        HStack(spacing: 20, content: {
//                            Text("\(getShortDate(epoch: forecast.date_epoch))")
//                                    .font(.system(size: 10))
//                                    .bold()
//                                
//                            Text("\(Int(forecast.day.avgtemp_c))")
//                                    .font(.system(size: 10))
//                                
//                            Text("\(getWeatherImage(code: forecast.day.condition.code))")
//                            
//                            Text("\(forecast.day.condition.text)")
//                                .font(.system(size: 9))
//                            })
//                            
//                        
//                    }
                
                    
                  
                })
                .offset(y: -30)
            }
        }
    }
}


//#Preview {
//    NextdayWeatherView()
//}

