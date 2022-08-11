//
//  TopBar.swift
//  What'sInTheFridge
//
//  Created by Jacob on 8/5/22.
//

import SwiftUI

struct TopBar: View {
    
    @State var searchItem = ""
    
    var body: some View {
        HStack{
            Image(systemName: "line.3.horizontal").resizable().frame(width: 30, height: 30, alignment: .center).padding()
            TextField("Search", text: $searchItem).padding()
            Button(action: {print("item pressed")},
                   label: {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                    .padding()
                    
                    })
        }
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
            .previewLayout(.sizeThatFits)
    }
}
