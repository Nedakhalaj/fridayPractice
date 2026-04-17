//
//  third.swift
//  fridayPractice
//
//  Created by neda khalajnejad on 2026-04-17.
//

import SwiftUI
import Observation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isDone: Bool = false
}

@Observable
class TaskViewModel {
    var tasks: [Task] = [
        Task(title: "Handla mat"),
        Task(title: "Plugga Swift"),
        Task(title: "Träna"),
    ]
}

struct TaskListView: View {
    @Bindable var viewModel: TaskViewModel

    var body: some View {
        List {
            ForEach($viewModel.tasks) { $task in //without $ is just read only, but if we want t o use it in toggle we need to put $
                HStack {
                    Text(task.title)
                    Spacer()
                    Toggle("", isOn: $task.isDone)//it need to have binding
                }
            }
        }
    }
}

#Preview {
    TaskListView(viewModel: TaskViewModel())// it needs to have argument
    
}


