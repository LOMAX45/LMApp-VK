//
//  ContentView.swift
//  LMApp-VK
//
//  Created by Максим Лосев on 28.06.2022.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo: Bool = true
    
    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map { _ in true },
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in false }
    )
        .removeDuplicates()
    
    var body: some View {
        
        ZStack {
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: geometry.size.width, maxHeight: geometry.size.height)
                    .opacity(0.35)
            }
            
            ScrollView(showsIndicators: false) {
                
                VStack{
                    if shouldShowLogo {
                        Image("vk-logo")
                            .padding([.top, .bottom], 64)
                    }
                    
                    VStack(
                        alignment: .leading,
                        spacing: 4
                    ){
                        Text("Телефон или e-mail:")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                        TextField("", text: $login)
                            .frame(maxWidth: 300, maxHeight: 48)
                        Text("Пароль:")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                        SecureField("", text: $password)
                            .frame(maxWidth: 300, maxHeight: 48)
                    }
                    .padding([.bottom], 12)
                    
                    HStack {
                        Button {
                            print("Attempting to logon")
                        } label: {
                            Label("Войти", systemImage: "chevron.right.2")
                        }
                        .frame(maxWidth: 130, minHeight: 42)
                        .foregroundColor(.white)
                        .background(Color.vkColorBlue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.vkColorBlue)
                        )
                        .disabled(login.isEmpty || password.isEmpty)
                        
                        Spacer()
                        
                        Button {
                            print("Logon cancelled")
                        } label: {
                            Label("Отмена", systemImage: "xmark")
                        }
                        .frame(maxWidth: 130, minHeight: 42)
                        .foregroundColor(.gray)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 3)
                        )
                    }
                    .frame(maxWidth: 300, maxHeight: 48)
                    
                    VStack(alignment: .leading) {
                        Text("Еще не зарегистрированы?")
                            .font(.callout)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                        
                        Button("Зарегистрироваться") {
                            print("Registration attempting")
                        }
                        .frame(maxWidth: 300, minHeight: 38)
                        .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.vkColorGreen, lineWidth: 3)
                        )
                        .background(Color.vkColorGreen)
                    }
                    .padding([.top], 25)
                    
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer()
                
            }
            
        }
        .onReceive(keyboardIsOnPublisher) { isKeyboardOn in
            withAnimation(Animation.easeOut(duration: 0.5)) {
                self.shouldShowLogo = !isKeyboardOn
            }
        }
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
