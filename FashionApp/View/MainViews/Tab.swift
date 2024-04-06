//
//  Tab.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-30.
//

import SwiftUI

struct Tab: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "circle")
                    Text("Home")
                }
            ProductList()
                .tabItem {
                    Image(systemName: "circle")
                    Text("All Products")
                }
            SideCartViewTemp()
                .tabItem {
                    Image(systemName: "circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Text("Cart")
                }
        }
    }

}

#Preview {
    Tab()
}
