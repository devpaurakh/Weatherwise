import SwiftUI

struct NextdayWeatherView: View {
    var body: some View {
        ZStack{
            Color(backgroundColor)
                .ignoresSafeArea()
            
            
            ScrollView {
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(blueColor)
                        .frame(width: 160, height: 81)
                        .offset(y: -25)
                    HStack(alignment:.top, content: {
                        Image("sunny")
                            .resizable()
                            .frame(width: 50,height: 50)
                        VStack(alignment:.leading,spacing: 3, content: {
                            Text("Tomorrow")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                            
                            HStack{
                                Text("28°c")
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                
                                Text("/")
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                
                                Text("29°c")
                                    .font(.system(size: 10))
                                    .fontWeight(.light)
                            }
                            
                            Text("Heavy Rain")
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
                                
                                Text("32%")
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
                                
                                Text("23km/h")
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
                                
                                Text("32%")
                                    .foregroundColor(.black)
                                    .font(.system(size: 10))
                                    .bold()
                            }
                        })
                        .offset(y: -29)
                    }
                
                
                VStack(alignment: .leading, spacing:3, content: {
                    Text("This week")
                        .foregroundColor(.black)
                        .font(.system(size: 10))
                        .fontWeight(.bold)
                    
                    HStack(spacing: 20, content: {
                        Text("Monday")
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                        
                        Text("28°c /18°c")
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                        
                        Image(systemName: "sun.max")
                            .foregroundColor(.black)
                    })
                    
                    HStack(spacing: 20, content: {
                        Text("Monday")
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                        
                        Text("28°c /18°c")
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                        
                        Image(systemName: "sun.max")
                            .foregroundColor(.black)
                    })
                    
                    
                    HStack(spacing: 20, content: {
                        Text("Monday")
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                        
                        Text("28°c /18°c")
                            .foregroundColor(.black)
                            .font(.system(size: 10))
                        
                        Image(systemName: "sun.max")
                            .foregroundColor(.black)
                        
                    })
                })
                .offset(y: -30)
            }
        }
    }
}


#Preview {
    NextdayWeatherView()
}

