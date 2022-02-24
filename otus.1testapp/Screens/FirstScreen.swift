//
//  SecondScreen.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 09.01.2022.
//

import SwiftUI

struct FirstScreen: View {
    @Binding<Int> var selection: Int
    @Binding<Int?> var toNextScreenSecondTabId: Int?
    
    var body: some View {
        VStack {
            Button("To second tab list item 3") {
                selection = 1
                toNextScreenSecondTabId = 3
            }
            Spacer().frame(height: 20.0)
            Button("To second tab list item 9") {
                selection = 1
                toNextScreenSecondTabId = 9
            }
            Spacer().frame(height: 20.0)
            Button("To second tab list item 5") {
                selection = 1
                toNextScreenSecondTabId = 5
            }
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(selection: .constant(0), toNextScreenSecondTabId: .constant(0))
    }
}
