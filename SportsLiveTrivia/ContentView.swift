//
//  ContentView.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 8/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "square")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                
            Text("SLT")
            Text("ab3131 change")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
