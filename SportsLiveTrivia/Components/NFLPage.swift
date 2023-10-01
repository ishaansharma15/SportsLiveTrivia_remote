//
//  NFLPage.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 9/18/23.
//

import SwiftUI

struct NFLPage: View {
    var body: some View {
        HStack{
            NavigationLink(destination: SignIn()) {
                Text("Sign In ").foregroundColor(.white).bold().frame(maxWidth: 80).underline()
            }
        }
    
    }
}

struct NFLPage_Previews: PreviewProvider {
    static var previews: some View {
        NFLPage()
    }
}
