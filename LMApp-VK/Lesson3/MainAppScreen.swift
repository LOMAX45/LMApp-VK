//
//  MainAppScreen.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 04.07.2022.
//

import SwiftUI

struct MainAppScreen: View {
    
    var body: some View {
        
            TabView {
                List(friends) { friend in
                    NavigationLink(destination: FriendProfileScreen(friend: friend)) {
                        UserCellView(friend: friend)
                    }
                }
                .listStyle(PlainListStyle())
                .tabItem {
                    Image(systemName: "person")
                    Text("Друзья")
                }
                .tag(0)
                Text("Группы View")
                    .font(.title)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Группы")
                    }
                    .tag(1)
                Text("Здесь будет лента новостей, однажды ...")
                    .font(.system(size: 17.0, weight: .light))
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .tabItem {
                        Image(systemName: "newspaper")
                        Text("Новости")
                    }
                    .tag(2)
            }
    }
}

struct MainAppScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainAppScreen()
    }
}
