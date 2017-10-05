//
//  Light.swift
//  Flash Runner
//
//  Created by Jacek Gałka on 05.10.2017.
//  Copyright © 2017 Jacek Gałka. All rights reserved.
//

import Foundation
import UIKit

class LightBar: UIView {
    let barDimmedColor: UIColor = UIColor(red: 208/255, green: 2/255, blue: 27/255, alpha: 0.5)
    let barOpaqueColor: UIColor = UIColor(red: 208/255, green: 2/255, blue: 27/255, alpha: 1)
    let borderColor: UIColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = barDimmedColor
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 8
    }
    
    convenience init() {
        self.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
