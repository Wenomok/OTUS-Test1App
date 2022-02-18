//
//  UIKitView.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 18.02.2022.
//

import SwiftUI

struct UIKitView: UIViewRepresentable {
    var completion: (() -> Void)
    
    func makeUIView(context: Context) -> some UIView {
        ImageViewButtonView.init(completion: completion)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
