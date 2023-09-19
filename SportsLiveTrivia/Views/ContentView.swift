//
//  ContentView.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 8/20/23.
//

import SwiftUI

struct ContentView: View {
    var color = "SecondaryColor"
    var body: some View {
        HStack{
            VStack(spacing: 40){
                Image("nba_logo").resizable(capInsets: EdgeInsets()).frame(maxWidth: 100, maxHeight: 200).frame(height: nil).scaledToFit()
                NavigationLink(destination: NFLfunc()) {
                    Text("NBA").foregroundColor(.white).bold()
                }
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
            VStack(spacing: 40){
                Image("nfllogo").resizable(capInsets: EdgeInsets()).frame(maxWidth: 100, maxHeight: 150).frame(height: nil).scaledToFit()
                Text("NFL").foregroundColor(.white).bold()
            }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
    }
    
    
}
@ViewBuilder
func NFLfunc() -> some View {
    NBAPage()
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
