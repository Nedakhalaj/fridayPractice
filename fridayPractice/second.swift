//
//  second.swift
//  fridayPractice
//
//  Created by neda khalajnejad on 2026-04-17.
//
import SwiftUI
import Observation

@Observable
class SettingsViewModel {
    var isDarkMode: Bool = false
    var fontSize: Float = 14
}

struct SettingsView: View {
    @Environment(SettingsViewModel.self) private var viewModel

    var body: some View {
        @Bindable var vm = viewModel

        Form {
            Toggle("Dark Mode", isOn: $vm.isDarkMode)
            Slider(value: $vm.fontSize, in: 10...24, step: 1)
            Text("Teckenstorlek: \(Int(vm.fontSize))")
        }
    }
}

#Preview {
    SettingsView()
        .environment(SettingsViewModel())// we should inject an Object
}

