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
            Color.green
                .ignoresSafeArea()
            VStack{
                Text("Fill in the Information Below")
                    Spacer()
                    HStack{
                        Text("Username: ")
                        TextField("name", text: $user)
                    }
                    HStack{
                        Text("Password: ")
                        TextField("password", text: $pass)
                    }
                    HStack{
                        Text("repeat Password: ")
                        TextField("password", text: $prepeat)
                    }
                    HStack{
                        Text("Gender:  ")
                        Picker("Gender", selection: $gender) {
                            Text("male").tag("male")
                            Text("female").tag("female")
                        }
                        Spacer()
                    }
                Color.green
                Spacer()
            }
        }
    }
}

struct SignUp_Screen_Previews: PreviewProvider {
    static var previews: some View {
        SignUp_Screen()
    }
}
