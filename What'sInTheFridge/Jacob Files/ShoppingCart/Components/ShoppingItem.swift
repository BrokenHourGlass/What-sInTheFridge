//
//  ShoppingItem.swift
//  What'sInTheFridge
//
//  Created by Jacob on 8/15/22.
//

import SwiftUI

struct ShoppingItem: View {
    
    var itemImage: String
    var title: String
    var price: Int
    var description: String
    
    init(image: String = "photo.fill", title: String = "Title", price: Int = 1, description: String = "This is an example"){
        self.itemImage = image
        self.title = title
        self.price = price
        self.description = description
    }
    
    var body: some View {
        HStack{
            Image(self.itemImage)
            Image("photo.fill")
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            VStack{
                Text(self.title)
                Text(String(self.price))
                Text(self.description)
            }
        }
    }
}

struct ShoppingItem_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingItem()
            .previewLayout(.sizeThatFits)
    }
}
