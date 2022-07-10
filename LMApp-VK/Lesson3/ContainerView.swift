//
//  ContainerView.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 04.07.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var shouldShowMainView = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginView(isUserLoggedIn: $shouldShowMainView)
                NavigationLink(destination: MainAppScreen(),
                               isActive: $shouldShowMainView) {
                    EmptyView()
                }
            }
        }
        
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
