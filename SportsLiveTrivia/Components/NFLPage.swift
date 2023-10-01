//
//  NFLPage.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 9/18/23.
//

import SwiftUI

struct NFLPage: View {
    var body: some View {
        var background: Color = Color("AccentColor")
        var secondColor: Color = Color("SecondaryColor")
        VStack{
            Text("Welcome to today's trivia!").foregroundColor(.white).bold().font(.largeTitle)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(secondColor)
    
    }
}

struct NFLPage_Previews: PreviewProvider {
    static var previews: some View {
        NFLPage()
    }
}
