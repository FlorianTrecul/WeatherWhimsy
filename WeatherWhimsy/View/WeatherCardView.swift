//
//  WeatherCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct WeatherCardView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Tuesday 25, july")
                    .font(.system(size: 12, weight: .light, design: .rounded))
                Text("Clear and Sunny")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                Spacer()
                HStack(alignment: .top, spacing: 0) {
                    Text("23")
                        .font(.system(size: 56, weight: .bold, design: .rounded))
                    Text("°C")
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                        .offset(y: 8)
                    
                }
                .offset(y: 10)
            }
            .foregroundStyle(.white)
            Spacer()
            VStack(alignment: .center, spacing: 20) {
                ZStack {
                    Image(systemName: "cloud.sun.fill")
                        .resizable()
                        .scaledToFit()
                        .symbolRenderingMode(.multicolor)
                }
                Text("26°/12°")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 120)
        .padding()
        .background(Color.blue.cornerRadius(12))
        .background(
            RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
        )
        .padding(.horizontal)
    }
}

#Preview {
    WeatherCardView()
        .previewLayout(.fixed(width: 375, height: 60))
}
