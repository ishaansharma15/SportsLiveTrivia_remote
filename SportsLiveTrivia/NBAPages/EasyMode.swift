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
    let questions = ["Who won the MVP last year?", "Who won the championship last year?", "Who has scored the most points in NBA history?", "How many fouls can a player commit before being ejected?", "How many points is a free throw worth?"]
    let answers = ["Nikola Jokic","Nuggets", "LeBron James", "6", "1"]
    let mc1 = ["Stephen Curry", "Celtics", "LeBron James", "4", "0"]
    let mc2 = ["LeBron James", "Nuggets", "Michael Jordan", "5", "1"]
    let mc3 = ["Nikola Jokic", "Bucks", "Kareem Abdul-Jabbar", "6", "2"]
    var max: Int = 5
    @State var correct: Int = 0
    var body: some View {
        VStack(spacing: 30){
            Text("NBA").foregroundColor(fourthColor).bold().font(.system(size: 60))
            
            if questionNum<max{
                Text(questions[questionNum]).foregroundColor(.white).bold().font(.system(size: 30)).frame(maxWidth: 300).multilineTextAlignment(.center)

                Button {
                    if answers[questionNum] == mc1[questionNum]{
                        correct+=1
                    }
                    if questionNum<max{
                        questionNum+=1
                    }
                    
                    
                } label: {
                    Label(mc1[questionNum], systemImage: ".cloud.rain").labelStyle(.titleOnly).bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(thirdColor).cornerRadius(10).shadow(radius: 10)
                }
                Button {
                    if answers[questionNum] == mc2[questionNum]{
                        correct+=1
                    }
                    if questionNum<max{
                        questionNum+=1
                    }
                    
                    
                } label: {
                    Label(mc2[questionNum], systemImage: ".cloud.rain").labelStyle(.titleOnly).bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(thirdColor).cornerRadius(10).shadow(radius: 10)
                }
                Button {
                    if answers[questionNum] == mc3[questionNum]{
                        correct+=1
                    }
                    if questionNum<max{
                        questionNum+=1
                    }
                    
                    
                } label: {
                    Label(mc3[questionNum], systemImage: ".cloud.rain").labelStyle(.titleOnly).bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(thirdColor).cornerRadius(10).shadow(radius: 10)
                }
            }
            else{
                Text("You got " + String(correct) + " questions correct!").foregroundColor(.white).font(.system(size: 45)).bold().multilineTextAlignment(.center).frame(maxWidth:350)
                Button {
                    questionNum=0
                    correct = 0
                } label: {
                    Label("Play Again", systemImage: ".cloud.rain").labelStyle(.titleOnly).bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(thirdColor).cornerRadius(10).shadow(radius: 10)
                }
            }
                        
            

        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(secondColor)
    }
}

struct EasyMode_Previews: PreviewProvider {
    static var previews: some View {
        EasyMode()
    }
}
