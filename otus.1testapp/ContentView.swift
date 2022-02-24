//
//  ContentView.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 08.01.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var contentViewModel: ContentViewModel
    
    var body: some View {
        TabView(selection: $contentViewModel.selection) {
            FirstScreen(selection: $contentViewModel.selection,
                        toNextScreenSecondTabId: $contentViewModel.toNextScreenSecondTabId)
                .tabItem({
                    Text("First")
                })
                .tag(0)
            ListScreen(toNextScreenId: $contentViewModel.toNextScreenSecondTabId)
                .tabItem({
                    Text("List")
                })
                .tag(1)
            TabWithModalScreen()
                .tabItem({
                    Text("Modal")
                })
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
