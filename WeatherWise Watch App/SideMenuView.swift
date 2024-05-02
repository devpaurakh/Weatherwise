//
//  SideMenuView.swift
//  WeatherWise Watch App
//
//  Created by Paurakh Vikram Saud on 29/04/2024.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    
    var body: some View {
        ZStack{
            Rectangle()
                .opacity(isShowing ? 0.3 : 0)
                .ignoresSafeArea()
                .onTapGesture {
                    isShowing.toggle()
                }
            
            HStack{
                VStack(alignment:.leading, spacing: 32){
                    SideMenuContentView()
                    Spacer()
                    
                    HStack(spacing:2){
                        Text("©")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                        Text("All Copyright are reserved")
                            .foregroundColor(.black)
                            .font(.system(size: 6))
                    }
                }
                .frame(width: 100)
                .background(.white)
                .offset(x: isShowing ? 0 : -100) // Slide in or out based on isShowing
                Spacer()
            }
        }
        .animation(.easeInOut,value: isShowing) // Add animation
    }
}


#Preview {
    SideMenuView(isShowing:.constant(true))
}
