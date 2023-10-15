//
//  SignIn.swift
//  SportsLiveTrivia
//
//  Created by Arav B on 9/2/23.
//

import SwiftUI

struct SignIn: View {
    var text: String = "Submit"
    var background: Color = Color("AccentColor")
    var secondColor: Color = Color("SecondaryColor")
    var thirdColor: Color = Color("TertiaryColor")
    @State var emailText: String = ""
    @State var passwordText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack(spacing: 60.0) {
                Text("Sign In").foregroundColor(.white).bold().font(.largeTitle).padding(.horizontal, 30).frame(maxWidth: 400, alignment: .center)
                TextField("Email", text: $emailText).padding().background(.white).cornerRadius(10).frame(maxWidth: 300).foregroundColor(thirdColor)
                SecureField("Password", text: $passwordText).padding().background(.white).cornerRadius(10).frame(maxWidth: 300).foregroundColor(thirdColor)
                
                NavigationLink(destination: submit()) {
                    Text("Submit").bold().foregroundColor(.white).frame(maxWidth: 275).padding(.vertical).padding(.horizontal).background(background).cornerRadius(10).shadow(radius: 10)
                }
                HStack{
                    Text("Don't have an account? ").foregroundColor(.white).bold().frame(maxWidth: 190)
                    
                    NavigationLink(destination: SignUp()) {
                        Text("Sign Up ").foregroundColor(.white).bold().frame(maxWidth: 80).underline()
                    }
                    
                }
                
                
                
                                      
                
                    
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity).edgesIgnoringSafeArea(.all).background(secondColor)
        }

    }
    @ViewBuilder
    func submit() -> some View {
        if(emailText==passwordText){
            HomePage()
        }
        
        
    }
}

struct SignInPreviews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
