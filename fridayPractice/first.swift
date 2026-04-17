//
//  ContentView.swift
//  fridayPractice
//
//  Created by neda khalajnejad on 2026-04-17.
//

import SwiftUI
import Observation

@Observable
class ProfileViewModel {
    var name: String = "Ada"
    var email: String = "ada@example.com"
}

struct ProfileEditView: View {
    @Environment(ProfileViewModel.self) private var viewModel

    var body: some View {
        @Bindable var vm = viewModel// we have to have bindable because we have textfild that needs binding
        Form {
            TextField("Namn", text: $vm.name)// it has to be vm not view model, that view model is just readable
            TextField("E-post", text: $vm.email)// also this
            Text("Hej, \(viewModel.name)!")
        }
    }
}

#Preview {
    ProfileEditView()
        .environment(ProfileViewModel()) //it should add it , there is @Environment but we didnt inject anything to it
}
