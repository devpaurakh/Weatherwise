//
//  ContentView.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 29/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        NavigationStack{
            
            ZStack{
                Color(backgroundColor)
                    .ignoresSafeArea()
                VStack(spacing:1,content: {
                    Text("Kathmandu, Nepal")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 10))
                    
                    HStack(content: {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                        })
                        
                        Image("sunny")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70,height: 70)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "chevron.right")
                                .foregroundColor(.black)
                        })
                    })
                    
                    Text("42°C")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                        
                    Rectangle()
                        .frame(height:4)
                        .background(.red)
                        .opacity(0)
                    
                    BottomItems()
                    
                       
                    
        
                })
               
                SideMenuView(isShowing: $showMenu)
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


struct BottomItems: View {
    var body: some View {
        Rectangle()
                    .overlay {
                        HStack(spacing:17, content: {
                            
                            VStack{
                                Image(systemName: "drop")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20))
                                Text("Humidity")
                                    .foregroundColor(.black)
                                    .font(.system(size: 10))
                                
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
                                    .font(.system(size: 10))
                                
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
                                    .font(.system(size: 10))
                                
                                Text("32%")
                                    .foregroundColor(.black)
                                    .font(.system(size: 10))
                                    .bold()
                            }
                        })
                    }
                    .frame(width: 180, height:60)
                    .background(Color.white)
                    .cornerRadius(1)
                    .shadow(color: Color.black.opacity(1), radius: 5, x: 0, y: 5) // Add shadow
    }
}
