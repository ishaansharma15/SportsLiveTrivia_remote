//
//  SignUp.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 9/16/23.
//

import SwiftUI

struct SignUp: View {
    var text: String = "Submit"
    var background: Color = Color("AccentColor")
    var secondColor: Color = Color("SecondaryColor")
    var thirdColor: Color = Color("TertiaryColor")
    @State var emailText: String = ""
    @State var passwordText: String = ""
    @State var confirmPasswordText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
            VStack(spacing: 60.0) {
                Text("Sign Up").foregroundColor(.white).bold().font(.largeTitle).padding(.horizontal, 30).frame(maxWidth: 400, alignment: .center)
                TextField("Email", text: $emailText).padding().background(.white).cornerRadius(10).frame(maxWidth: 300).foregroundColor(thirdColor)
                SecureField("Password", text: $passwordText).padding().background(.white).cornerRadius(10).frame(maxWidth: 300).foregroundColor(thirdColor)
                SecureField("Confirm Password", text: $confirmPasswordText).padding().background(.white).cornerRadius(10).frame(maxWidth: 300).foregroundColor(thirdColor)
                
            
                NavigationLink(destination: submit()) {
                    Text("Create Account").bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(background).cornerRadius(10).shadow(radius: 10).bold()
                }
                HStack{
                    Text("Already have an account? ").foregroundColor(.white).bold().frame(maxWidth: 210)
                    
                    NavigationLink(destination: SignIn()) {
                        Text("Sign In ").foregroundColor(.white).bold().frame(maxWidth: 80).underline()
                    }
                    
                }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(secondColor)
    }
    @ViewBuilder
    func submit() -> some View {
        if(confirmPasswordText==passwordText){
            
            HomePage()
        }
        
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
