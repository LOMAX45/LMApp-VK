//
//  UserCellView.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 30.06.2022.
//

import SwiftUI

struct UserCellView: View {
    
    var friend: Friend
    
    var body: some View {
        
        HStack {
            
            Image(friend.avatar)
                .resizable()
                .frame(width: 64, height: 64)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(friend.name)
                    .lineLimit(1)
                    .font(.system(size: 19, weight: .bold, design: .default))
                    .foregroundColor(Color.vkColorBlue)
                    
                
                Text(friend.education)
                    .lineLimit(1)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .foregroundColor(Color.vkColorBlue)
            }
            

            Spacer()
        }
        .shadow(color: .gray, radius: 2, x: 5, y:5)
    }
}

//struct UserCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserCellView()
//    }
//}
