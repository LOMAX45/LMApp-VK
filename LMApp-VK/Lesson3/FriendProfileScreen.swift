//
//  FriendProfileScreen.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 04.07.2022.
//

import SwiftUI

struct FriendProfileScreen: View {
    
    var friend: Friend
    
    var body: some View {
        Text(friend.name)
            .font(.largeTitle)
            .padding([.bottom], 32)
        Image(friend.avatar)
            .resizable()
            .frame(width: 150, height: 150, alignment: .center)
            .scaledToFit()
        Spacer()
    }
}

//struct FriendProfileScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendProfileScreen()
//    }
//}
