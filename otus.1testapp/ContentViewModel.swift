//
//  ContentViewModel.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 09.01.2022.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    @Published var selection = 0
    @Published var toNextScreenSecondTabId: Int?
}
