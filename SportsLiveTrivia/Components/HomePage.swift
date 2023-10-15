//
//  ContentView.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 8/20/23.
//

import SwiftUI

struct HomePage: View {
    var color = "SecondaryColor"
    var body: some View {
        
            VStack{
                NavigationLink(destination: NBAPage()) {
                    VStack(spacing: 40){
                        Image("retry5").resizable(capInsets: EdgeInsets()).frame(maxWidth: 200, maxHeight: 200).scaledToFit()
                        
                        Text("NBA").foregroundColor(.white).bold()
                    }
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
                NavigationLink(destination: NFLPage()) {
                    VStack(spacing: 40){
                        Image("nfllogo").resizable(capInsets: EdgeInsets()).frame(maxWidth: 100, maxHeight: 150).frame(height: nil).scaledToFit()
                        Text("NFL").foregroundColor(.white).bold()
                    }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
                
                
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
        }
    }
    




struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
