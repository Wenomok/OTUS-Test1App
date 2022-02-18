//
//  SecondScreen.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 09.01.2022.
//

import SwiftUI

struct FirstScreen: View {
    @Binding<Int> var selection: Int
    @Binding<Bool> var toNextScreenSecondTab: Bool
    
    var body: some View {
        NavigationView {
            Button("To second tab") {
                selection = 1
                toNextScreenSecondTab = true
            }
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(selection: .constant(0), toNextScreenSecondTab: .constant(false))
    }
}
