//
//  LightBars.swift
//  Flash Runner
//
//  Created by Jacek Gałka on 05.10.2017.
//  Copyright © 2017 Jacek Gałka. All rights reserved.
//

import UIKit

class LightBars: UIStackView {
    
    //MARK: Properties
    private var lightBars = [LightBar]()
    
    var animationDuration = 2
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        setupBars()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupBars()
    }
    
    //MARK: Private Methods
    private func setupBars() {
        for _ in 0..<5 {
            let bar = LightBar()
            
            // Add constraints
            bar.translatesAutoresizingMaskIntoConstraints = false
            bar.heightAnchor.constraint(equalToConstant: 10.0).isActive = true
            
            // Add the view to the stack
            addArrangedSubview(bar)
        }
    }
}
