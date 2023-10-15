//
//  NBAPage.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 9/18/23.
//

import SwiftUI

struct NBAPage: View {
    var background: Color = Color("AccentColor")
    var secondColor: Color = Color("SecondaryColor")
    var thirdColor: Color = Color("TertiaryColor")
    var body: some View {
        VStack(spacing: 30){
            Text("Welcome to today's trivia!").foregroundColor(.white).bold().font(.system(size: 30))
            Text("Choose a mode:").foregroundColor(background).bold().font(.system(size: 30))
            NavigationLink(destination: EasyMode()) {
                Text("Easy").bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(thirdColor).cornerRadius(10).shadow(radius: 10).bold()
            }
            NavigationLink(destination: MediumMode()) {
                Text("Medium").bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(thirdColor).cornerRadius(10).shadow(radius: 10).bold()
            }
            NavigationLink(destination: HardMode()) {
                Text("Hard").bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(thirdColor).cornerRadius(10).shadow(radius: 10).bold()
            }
            NavigationLink(destination: ExtremeMode()) {
                Text("Extreme").bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(thirdColor).cornerRadius(10).shadow(radius: 10).bold()
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(secondColor)
    }
}

struct NBAPage_Previews: PreviewProvider {
    static var previews: some View {
        NBAPage()
    }
}
