//
//  TabWithModalScreen.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 09.01.2022.
//

import SwiftUI

struct TabWithModalScreen: View {
    @State private var isModalPresented = false
    
    var body: some View {
        NavigationView {
            Button { isModalPresented.toggle() }
            label: {
                Text("Present modal")
            }.sheet(isPresented: $isModalPresented) {
                ModalScreen()
            }
        }
    }
}

struct TabWithModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabWithModalScreen()
    }
}
