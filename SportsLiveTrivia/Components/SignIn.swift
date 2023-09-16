//
//  SignIn.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 9/2/23.
//

import SwiftUI

struct SignIn: View {
    var text: String
    var background: Color = Color("AccentColor")
    var color: Color = Color("SecondaryColor")
    var body: some View {
        
        VStack(spacing: 60.0){
            Text("Sign In").foregroundColor(.white).bold().font(.largeTitle).padding(.horizontal, 30).frame(maxWidth: 400, alignment: .leading)
            Text("Email").foregroundColor(.white).frame(maxWidth: 300, alignment: .leading)
            Text("Password").foregroundColor(.white).frame(maxWidth: 300, alignment: .leading)
            
            Text(text).foregroundColor(.white).padding().padding(.horizontal).background(background).cornerRadius(30).shadow(radius: 10).fixedSize()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(color)
        
    }
}

struct SignInPreviews: PreviewProvider {
    static var previews: some View {
        SignIn(text: "Submit")
    }
}
