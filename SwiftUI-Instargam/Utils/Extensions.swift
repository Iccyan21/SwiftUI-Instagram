//
//  Extensions.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/13.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
    }
}
