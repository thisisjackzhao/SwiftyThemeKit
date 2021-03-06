//
//  UINavigationBar+Theme.swift
//  ThemeKit
//
//  Created by Octree on 2018/8/13.
//  Copyright © 2018年 Octree. All rights reserved.
//

import UIKit

public extension ThemeKit where Base: UINavigationBar {
    
    public var barTintColor: KeyPath<Theme, UIColor>? {
        
        set {
            let base = self.base
            setPicker(keyPath: newValue, render: {
                color in
                base.barTintColor = color
            })
        }
        get {
            return getPicker()?.keyPath
        }
    }
    
    public var titleColor: KeyPath<Theme, UIColor>? {
        
        set {
            let base = self.base
            setPicker(keyPath: newValue, render: {
                color in
                base.titleTextAttributes = [.foregroundColor: color]
            })
        }
        get {
            return getPicker()?.keyPath
        }
    }
}
