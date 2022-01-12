//
//  ContentView.swift
//  Moonshot
//
//  Created by Vlad Gershun on 1/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            Image("example")
                .resizable()
                .scaledToFill()
                .frame(width: geo.size.width * 0.8 , height: 300)
                .frame(width: geo.size.width, height: geo.size.height)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
