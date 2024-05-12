//
//  SplashScreenView.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 29/04/2024.
//

import SwiftUI

struct SplashScreenView:View {
    @State  private var isActive = false
    @State  private var size = 0.8
    @State  private var opacity = 0.5
    
    
    var body: some View {
        if isActive{
            ContentView()
        }else{
            ZStack{
                Color.white
                    .ignoresSafeArea()
                VStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 100,height:100)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2 )){
                        self.size = 1.3
                        self.opacity = 1.0
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 ){
                        withAnimation{
                            self.isActive = true
                        }
                        
                    }
                }
            }
        }
       
    }
}

struct SplashScreenView_Previews: PreviewProvider{
    static var previews: some View{
        SplashScreenView()
    }
}
