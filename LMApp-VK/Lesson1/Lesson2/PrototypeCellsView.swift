//
//  PrototypeCellsView.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 30.06.2022.
//

import SwiftUI

struct PrototypeCellsView: View {
    var body: some View {
        
        VStack(spacing: 2) {
            UserCellView()
            GroupCellView()
            Spacer()
        }
    }
}

struct PrototypeCellsView_Previews: PreviewProvider {
    static var previews: some View {
        PrototypeCellsView()
    }
}
