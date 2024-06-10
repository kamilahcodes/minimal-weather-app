//
//  WeatherView.swift
//  minimal-weather-app
//
//  Created by Kamilah Agbaje on 09/06/2024.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    var body: some View {
        VStack(alignment:.center){
            VStack{
  
                Text(weather.name)
                    .bold()
                    .font(.title2)
                
        
                
           
                
           
                 
                
            }
            Spacer()
            VStack(spacing: 5){
                Image(systemName: "cloud.fill")
                    .font(.system(size: 60))
                
                Text(weather.main.feelsLike.roundDouble() + "°")
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                    .padding()
                
                Text("\(weather.weather[0].main)")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                
                
                
                
                
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(.secondarySystemBackground))
//        .preferredColorScheme(.dark)
    }
}

#Preview {
    WeatherView(weather: previewWeather)
}
