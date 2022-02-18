//
//  ImageViewButtonView.swift
//  otus.1testapp
//
//  Created by Vladislav Ivshin on 18.02.2022.
//

import UIKit

class ImageViewButtonView: UIView {
    @IBOutlet var contentView: UIView!
    
    var completion: () -> Void
    
    init(completion: (@escaping () -> Void)) {
        self.completion = completion
        
        super.init(frame: .zero)
        
        commonInit()
    }
    
    override init(frame: CGRect) {
        fatalError()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("ImageViewButtonView", owner: self, options: nil)
        addSubview(contentView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = bounds
    }

    @IBAction func buttonPressed(_ sender: Any) {
        completion()
    }
}
