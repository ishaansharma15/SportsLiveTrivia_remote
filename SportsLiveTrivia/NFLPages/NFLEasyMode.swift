//
//  SF.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 9/27/23.
//

import SwiftUI

struct NFLEasyMode: View {
    var background: Color = Color("AccentColor")
    var secondColor: Color = Color("SecondaryColor")
    var thirdColor: Color = Color("TertiaryColor")
    var fourthColor: Color = Color("Color4")
    let question = ["Which player has the most Super Bowl rings", "Who won the Super Bowl in 2022?", "Which team's main colors are black and orange?"]
    let answerChoice1 = ["Jerry Rice", "Rams", "Steelers"]
    
    let answerChoice2 = ["Patrick Mahomes", "Patriots", "Browns", ]

    

    
    
    var body: some View {
    
        VStack (spacing: 30){
        
                
                Text("NFL").foregroundColor(fourthColor).bold().font(.system(size: 60))
            Text(question[2]).foregroundColor(.white).bold().font(.system(size: 30)).multilineTextAlignment(.center)
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
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(secondColor)
        
       
        
    }
}

struct NFLEasyMode_Previews: PreviewProvider {
    static var previews: some View {
        NFLEasyMode()
    }
}

