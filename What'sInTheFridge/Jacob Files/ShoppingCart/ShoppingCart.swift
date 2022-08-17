//
//  ShoppingCart.swift
//  What'sInTheFridge
//
//  Created by Jacob on 8/13/22.
//

import SwiftUI

struct ShoppingCart: View {
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            VStack{
                Text("Your Cart")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                    .padding(.all)
                ScrollView{
                    //place list here
                }.background(Color.white .cornerRadius(1))
                Button(action: {print("order")}){
                    Text("Order")
                }
                .padding(.vertical)
                .padding(.horizontal, UIScreen.screenWidth/4)
                .foregroundColor(Color.black)
                .background(Color.orange .cornerRadius(16))
            }
        }
    }
}

struct ShoppingCart_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCart()
    }
}
