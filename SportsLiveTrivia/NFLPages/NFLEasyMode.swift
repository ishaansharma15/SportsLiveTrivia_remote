//
//  EasyMode.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 10/14/23.
//

import SwiftUI

struct NFLEasyMode: View {
    var background: Color = Color("AccentColor")
    var secondColor: Color = Color("SecondaryColor")
    var thirdColor: Color = Color("TertiaryColor")
    var fourthColor: Color = Color("Color4")
    @State var questionNum: Int = 0
    let questions = ["Which NFL player has the most Superbowl wins?", "Who won the Superbowl last year?", "Which team's primary colors are black and orange?", "How many points is a touchdown worth?", "How many teams are in the NFL?"] 
    let answers = ["Tom Brady","Chiefs", "Bengals", "6", "30"]
    
    let mc1 = ["Jerry Rice", "Bengals", "Steelers", "6", "10"]
    
    let mc2 = ["Patrick Mahomes", "Patriots", "Browns", "7", "30"]
    
    let mc3 = ["Rob Gronkowski", "Chiefs", "Dolphins", "8", "32"]
    
    let mc4 = ["Tom Brady", "49ers", "Bengals", "10", "20"]
    var max: Int = 5
    @State var correct: Int = 0
    var body: some View {
        VStack(spacing: 30){
            Text("NFL").foregroundColor(fourthColor).bold().font(.system(size: 60))
            
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

struct NFLEasyMode_Previews: PreviewProvider {
    static var previews: some View {
        EasyMode()
    }
}
