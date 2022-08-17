//
//  SignUp Screen.swift
//  What'sInTheFridge
//
//  Created by Jacob on 8/11/22.
//

import SwiftUI

struct SignUp_Screen: View {
    
    @State var user = ""
    @State var pass = ""
    @State var prepeat = ""
    
    @State var gender = "Select"
    
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            Circle()
                .fill(Color.green)
                .offset(x: -UIScreen.screenWidth/3, y: -UIScreen.screenHeight/2.5)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: .center)
            Circle()
                .fill(Color.orange)
                .offset(x: -UIScreen.screenWidth/3, y: UIScreen.screenHeight/2)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: .center)
            Circle()
                .fill(Color.green)
                .offset(x: UIScreen.screenWidth/3, y: UIScreen.screenHeight/2.5)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/3, alignment: .center)
            VStack{
                Text("Please Fill in the Information Below")
                TextField("Username", text: $user)
                Divider()
                    .frame(height: 1)
                    .background(Color.black)
                TextField("password", text: $pass)
                Divider()
                    .frame(height: 1)
                    .background(Color.black)
                TextField("repeat password", text: $prepeat)
                Divider()
                    .frame(height: 1)
                    .background(Color.black)
                Button(action: {print("Sign-up")}){
                    Text("Sign Up")
                        .padding(.all)
                        .background(Color.orange .cornerRadius(24))
                }
            }
        }
    }
}

struct SignUp_Screen_Previews: PreviewProvider {
    static var previews: some View {
        SignUp_Screen()
    }
}
