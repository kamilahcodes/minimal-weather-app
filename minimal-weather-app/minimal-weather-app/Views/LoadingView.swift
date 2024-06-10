//
//  LoadingView.swift
//  minimal-weather-app
//
//  Created by Kamilah Agbaje on 09/06/2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
