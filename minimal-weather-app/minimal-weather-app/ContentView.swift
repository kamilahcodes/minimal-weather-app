//
//  ContentView.swift
//  minimal-weather-app
//
//  Created by Kamilah Agbaje on 08/06/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {
        VStack {
            
            if let location = locationManager.location{
                
                if let  weather = weather{
                    WeatherView(weather: weather)
                }
                else{
                    LoadingView()
                        .task {
                            do{
                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                                
                            }catch{
                                print("Error gettitng weather")
                            }
                        }
                }
                
              
            }
            else{
                if locationManager.isLoading{
                    LoadingView()
                }
                else{
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
            
        }
        .background(Color(.secondarySystemBackground))
       // .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
