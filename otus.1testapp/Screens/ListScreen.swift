//
//  ListScreen.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 09.01.2022.
//

import SwiftUI

struct ListScreen: View {
    @Binding<Bool> var toNextScreen: Bool
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ListSubScreen(), isActive: $toNextScreen, label: {
                    Text("Open subscreen")
                })
            }
            .navigationTitle(Text("List"))
        }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen(toNextScreen: .constant(false))
    }
}
