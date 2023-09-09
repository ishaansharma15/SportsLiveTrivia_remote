//
//  ContentView.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 8/20/23.
//

import SwiftUI

struct ContentView: View {
    var text: String
    var background: Color = Color("AccentColor")
    var body: some View {
        Text(text)
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: "Next")
    }
}
