//
//  WelcomeVIiew.swift
//  minimal-weather-app
//
//  Created by Kamilah Agbaje on 09/06/2024.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
        var body: some View {
        VStack{
            
            VStack(spacing: 20){
                Text("Welcome to the weather app")
                    .bold().font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.reqLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
