//
//  PrimaryButton.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 9/2/23.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    var body: some View {
        Text(text).foregroundColor(.white).background(background).padding().padding(.horizontal).cornerRadius(30).shadow(radius: 30)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Next")
    }
}
