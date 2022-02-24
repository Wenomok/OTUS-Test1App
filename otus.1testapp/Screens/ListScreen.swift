//
//  ListScreen.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 09.01.2022.
//

import SwiftUI

struct ListScreen: View {
    @Binding<Int?> var toNextScreenId: Int?
    
    var data: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    
    var body: some View {
        NavigationView {
            List {
                ForEach (0..<data.count) { index in
                    let value = data[index]
                    
                    NavigationLink(destination: ListSubScreen(value: value), tag: value, selection: $toNextScreenId, label: {
                        Button("Open subscreen \(data[index])") {
                            toNextScreenId = data[index]
                        }
                    })
                }
            }
            .navigationTitle(Text("List"))
        }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen(toNextScreenId: .constant(0))
    }
}
