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
    @State var questionNum: Int = 0
    let questions = ["Who won the MVP last year?", "Who won the championship last year?"]
    let answers = ["Jokic","Nuggets"]
    var max: Int = 2
    var body: some View {
        VStack(spacing: 30){
            Text("NBA").foregroundColor(fourthColor).bold().font(.system(size: 60))
            Text(questions[questionNum]).foregroundColor(.white)
            Button {
                if questionNum+1<max{
                    questionNum+=1
                }
                
            } label: {
                Label(answers[questionNum], systemImage: ".cloud.rain").labelStyle(.titleOnly).bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(background).cornerRadius(10).shadow(radius: 10)
            }

        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(secondColor)
    }
}

struct EasyMode_Previews: PreviewProvider {
    static var previews: some View {
        EasyMode()
    }
}
