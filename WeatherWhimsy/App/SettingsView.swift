//
//  SettingsView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 01/05/2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.colorScheme) private var scheme
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("userTheme") private var userTheme: ThemeType = .light
    @AppStorage("unit") private var unit: UnitType = .standard
    
    @State private var showingThemeChangeView: Bool = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Appareance")) {
                    Button(action: {
                        showingThemeChangeView.toggle()
                    }, label: {
                        HStack {
                            Image(systemName: userTheme == .dark ? "moon.fill" : "circle.fill")
                                .foregroundStyle(userTheme == .dark ? .colorMoon : .colorSun)
                            Text("Change Theme")
                        }
                    })
                }
                Section(header: Text("Units")) {
                    Picker("Units", selection: $unit) {
                        ForEach(UnitType.allCases, id: \.self)  { unit in
                            Text(unit.title)
                        }
                    }
                    .padding(.vertical, 8)
                    .pickerStyle(.segmented)
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
            )
            .background(.colorBackground)
        }
        .preferredColorScheme(userTheme.colorScheme)
        .sheet(isPresented: $showingThemeChangeView, content: {
            ThemeChangeView(scheme: scheme)
                .presentationDetents([.height(410)])
                .presentationBackground(.clear)
        })
    }
}

#Preview {
    SettingsView()
}
