//
//  Login Screen.swift
//  What'sInTheFridge
//
//  Created by Jacob on 8/9/22.
//

import SwiftUI

extension UIScreen{
    static var screenWidth = UIScreen.main.bounds.size.width
    static var screenHeight = UIScreen.main.bounds.size.height
    static var screenSize = UIScreen.main.bounds.size
    
}

struct Login_Screen: View {
    
    @State var user = ""
    @State var password = ""
    
    var body: some View {
        ZStack{
            Color.green
            Group{
                Circle()
                    .fill(Color.white)
                    .offset(x: UIScreen.screenWidth/2, y: -UIScreen.screenHeight/2+(UIScreen.screenHeight/10))
                    .frame(width: UIScreen.screenWidth/1.3, height: UIScreen.screenHeight/1.1, alignment: .center)
                Circle()
                    .fill(Color.white)
                    .offset(x: -UIScreen.screenWidth/3, y: UIScreen.screenHeight/2)
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: .center)
                Circle()
                    .fill(Color.orange)
                    .offset(x: UIScreen.screenWidth/2, y: UIScreen.screenHeight/2.25)
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: .center)
            }
            VStack{
                Text("0")
                HStack{
                    Text("Welcome\nBack")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding()
                    Spacer()
                }
                Spacer()
            }
            VStack{
                HStack{
                    Spacer()
                    TextField("User ID", text: $user)
                        .padding(.vertical, 10.0)
                        .background(Color.white
                            .cornerRadius(16))
                    Spacer()
                }
                HStack{
                    Spacer()
                    SecureField("password", text: $password)
                        .padding(.vertical, 10.0)
                        .background(Color.white .cornerRadius(16))
                    Spacer()
                }
                Button(action: {print("click")}) {
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .padding(.vertical)
                        .padding(.horizontal, 80.0)
                        .background(Color.orange .cornerRadius(24))
                }
                Button(action: {print("signup")}){
                    Text("Sign Up")
                        .foregroundColor(Color.white)
                        .padding(.vertical)
                        .padding(.horizontal, 80.0)
                        .background(Color.orange .cornerRadius(24))
                }
            }
        }
    }
}

struct Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
    }
}
