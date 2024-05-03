//
//  ThemeChangeView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 02/05/2024.
//

import SwiftUI

struct ThemeChangeView: View {
    var scheme: ColorScheme
    @AppStorage("userTheme") private var userTheme: ThemeType = .light
    @Namespace private var animation
    
    @State private var circleOffset: CGSize
    init(scheme: ColorScheme) {
        self.scheme = scheme
        let isDark = scheme == .dark
        self._circleOffset = .init(initialValue: CGSize(width: isDark ? 30 : 150, height: isDark ? -25 : -150))
    }
    
    var body: some View {
        VStack(spacing: 15) {
            Circle()
                .fill(userTheme.color(scheme: scheme).gradient)
                .frame(width: 150, height: 150)
                .mask {
                    Rectangle()
                        .overlay {
                            Circle()
                                .offset(circleOffset)
                                .blendMode(.destinationOut)
                        }
                }
            Text("Choose a Theme")
                .font(.title2.bold())
                .padding(.top, 25)
            HStack(spacing: 0) {
                ForEach(ThemeType.allCases, id: \.rawValue) { theme in
                    if theme != .system {
                        Text(theme.title)
                            .padding(.vertical, 10)
                            .frame(width: 100)
                            .background {
                                ZStack {
                                    if userTheme == theme {
                                        Capsule()
                                            .fill(.colorBackground)
                                            .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                                    }
                                }
                                .animation(.snappy, value: userTheme)
                            }
                            .contentShape(.rect)
                            .onTapGesture {
                                userTheme = theme
                            }
                    }
                }
            }
            .padding(3)
            .background(.primary.opacity(0.06), in: .capsule)
            .padding(.top, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .frame(height: 410)
        .background(.colorBackground)
        .clipShape(.rect(cornerRadius: 30))
        .padding(.horizontal, 15)
        .preferredColorScheme(scheme)
        .onChange(of: scheme, initial: false) { _, newValue in
            let isDark = newValue == .dark
            withAnimation(.bouncy) {
                circleOffset = CGSize(width: isDark ? 30 : 150, height: isDark ? -25 : -150)
            }
        }
    }
}

#Preview {
    ThemeChangeView(scheme: .dark)
}
