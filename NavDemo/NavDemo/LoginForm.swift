//
//  LoginForm.swift
//  NavDemo
//
//  Created by Vlad Gershun on 4/19/22.
//

import SwiftUI

struct LoginForm: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var submit: (_ username: String, _ password: String) -> ()
    
    var body: some View {
        Form {
            Text("Welcom to our service!!")
            
            Section {
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
            }
            
            Button("Log In") {
                submit(username, password)
            }
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm { username, password in
            print(username, password)
        }
    }
}
