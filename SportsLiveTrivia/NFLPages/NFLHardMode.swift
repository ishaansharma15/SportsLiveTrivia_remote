//
//  NFLHardMode.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 10/14/23.
//

import SwiftUI

struct NFLHardMode: View {
    var color = "SecondaryColor"
    var body: some View {
    
        VStack {
            Text("NFL Hard Mode").bold().font(.system(size: 30)).foregroundColor(.white)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
    }
}

struct NFLHardMode_Previews: PreviewProvider {
    static var previews: some View {
        NFLHardMode()
    }
}
