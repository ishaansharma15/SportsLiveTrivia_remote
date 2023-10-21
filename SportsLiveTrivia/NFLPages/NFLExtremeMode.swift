//
//  NFLExtremeMode.swift
//  SportsLiveTrivia
//
//  Created by Ishaan Sharma on 10/14/23.
//

import SwiftUI

struct NFLExtremeMode: View {
    var color = "SecondaryColor"
    var body: some View {
    
        VStack {
            Text("NFL Easy Mode").bold().font(.system(size: 30)).foregroundColor(.white)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(Color(color))
    }
}

struct NFLExtremeMode_Previews: PreviewProvider {
    static var previews: some View {
        NFLExtremeMode()
    }
}
