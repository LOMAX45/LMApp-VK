//
//  Friend.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 04.07.2022.
//

import SwiftUI

class Friend: Identifiable {
    let id: UUID = UUID()
    let name: String
    let avatar: String
    let education: String
    
    internal init(name: String, avatar: String, education: String) {
        self.name = name
        self.avatar = avatar
        self.education = education
    }
}
