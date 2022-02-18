//
//  ModalScreen.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 09.01.2022.
//

import SwiftUI

struct ModalScreen: View {
    var body: some View {
        Text("Modal screen")
        UIKitView {
            print("Press")
            return
        }.frame(minWidth: 0.0, maxWidth: 200, minHeight: 0.0, maxHeight: 200)
    }
}

struct ModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen()
    }
}
