//
//  HomePageView.swift
//  What'sInTheFridge
//
//  Created by Maximilian Stump on 8/17/22.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        NavigationView {
            List{
                Text("Recipe Name")
                    .navigationTitle("Recipe App")
                
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
