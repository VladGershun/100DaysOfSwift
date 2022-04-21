//
//  LoggedInHome.swift
//  NavDemo
//
//  Created by Vlad Gershun on 4/19/22.
//

import SwiftUI

struct User {
    var name: String
}

struct LoggedInHome: View {
    var user: User
    var logOut: ()->()
    
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Hello, \(user.name)!")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Log Out") {
                                logOut()
                            }
                        }
                    }

            }
            
            
        }
    }
}

struct LoggedInHome_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInHome(user: .init(name: "Vlad")) {}
    }
}
