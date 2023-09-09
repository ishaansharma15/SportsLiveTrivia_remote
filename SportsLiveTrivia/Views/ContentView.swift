//
//  ContentView.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 8/20/23.
//

import SwiftUI

struct ContentView: View {
    var color = "AccentColor"
    var body: some View {
        VStack(spacing: 40){
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
