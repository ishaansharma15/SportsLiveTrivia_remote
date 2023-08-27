//
//  ContentView.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 8/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("nba_logo").resizable().aspectRatio(contentMode: .fit)
            Text("NBA").bold()
                Image("nfllogo").resizable().aspectRatio(contentMode: .fit)
            Text("NFL").bold()
        }
        
            
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
