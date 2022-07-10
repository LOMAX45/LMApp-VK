//
//  GroupCellView.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 30.06.2022.
//

import SwiftUI

struct GroupCellView: View {
    var body: some View {
        
        HStack {
            
            Image("koalas")
                .resizable()
                .frame(width: 64, height: 64)

            VStack(alignment: .leading, spacing: 8) {
                Text("Клуб по коалтересам")
                    .lineLimit(1)
                    .font(.system(size: 19, weight: .bold, design: .default))
                    .foregroundColor(Color.vkColorBlue)
                
                Text("Группа")
                    .lineLimit(1)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .foregroundColor(Color.vkColorBlue)
            }

            Spacer()
        }
        .padding([.leading, .top, .bottom], 4)
        .shadow(color: .gray, radius: 2, x: 5, y: 5)
        .border(.gray, width: 1)
    }
}

struct GroupCellView_Previews: PreviewProvider {
    static var previews: some View {
        GroupCellView()
    }
}
