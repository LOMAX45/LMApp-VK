//
//  Extentions.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 28.06.2022.
//

import SwiftUI

extension Color {
    public static var vkColorBlue: Color {
        Color(UIColor(red: 46/255,
                      green: 121/255,
                      blue: 246/255,
                      alpha: 1.0))
    }
    
    public static var vkColorGreen: Color {
        Color(UIColor(red: 104/255,
                      green: 176/255,
                      blue: 88/255,
                      alpha: 1.0))
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
