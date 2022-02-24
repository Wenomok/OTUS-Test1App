//
//  ListSubScreen.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 09.01.2022.
//

import SwiftUI

struct ListSubScreen: View {
    var value: Int
    
    var body: some View {
        Text("ListSubScreen \(value)")
    }
}

struct ListSubScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListSubScreen(value: 0)
    }
}
