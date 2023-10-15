//
//  EasyMode.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 10/14/23.
//

import SwiftUI

struct EasyMode: View {
    var background: Color = Color("AccentColor")
    var secondColor: Color = Color("SecondaryColor")
    var thirdColor: Color = Color("TertiaryColor")
    var fourthColor: Color = Color("Color4")
    var body: some View {
        VStack(spacing: 30){
            Text("NBA").foregroundColor(fourthColor).bold().font(.system(size: 60))
            Text("Which team won the first NBA Championship?").foregroundColor(.white).bold().font(.system(size: 30))
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

struct EasyMode_Previews: PreviewProvider {
    static var previews: some View {
        EasyMode()
    }
}
