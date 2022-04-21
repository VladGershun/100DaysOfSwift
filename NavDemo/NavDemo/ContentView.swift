//
//  ContentView.swift
//  NavDemo
//
//  Created by Vlad Gershun on 4/19/22.
//

import SwiftUI

struct ContentView: View {
    @State private var user: User? = nil
    
    var body: some View {
        VStack {
            if let user = user {
                LoggedInHome(user: user, logOut: {
                    withAnimation {
                        
                        self.user = nil
                    }
                })
                .transition(.asymmetric(insertion: .scale, removal: .opacity))
            } else {
                LoginForm(submit: { username, password in
                    withAnimation {
                        user = User(name: username)
                    }
                })
                .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
