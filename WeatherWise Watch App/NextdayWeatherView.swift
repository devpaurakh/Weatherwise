import SwiftUI

struct NextdayWeatherView: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
           
            
            ScrollView {
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(blueColor)
                        .frame(width: 160, height: 81)
                    
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                        Image("sunny")
                            .resizable()
                            .frame(width: 60,height: 60)
                        /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    })
                    
                }
               Spacer()
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.red)
                        .frame(width: 160, height: 50)
                    
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
                }
            }
        }
    }


#Preview {
    NextdayWeatherView()
}

