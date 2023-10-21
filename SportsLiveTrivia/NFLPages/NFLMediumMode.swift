//
//  NFLMediumMode.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 10/14/23.
//

import SwiftUI

struct NFLMediumMode: View {
    var color = "SecondaryColor"
    var body: some View {
    
        VStack {
            Text("NFL Medium Mode").bold().font(.system(size: 30)).foregroundColor(.white)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
    }
}

struct NFLMediumMode_Previews: PreviewProvider {
    static var previews: some View {
        NFLMediumMode()
    }
}
