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
                    Image(systemName: "1.circle")
                    Text("Tab 2")
                }
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Tab 2")
                }
            Text("Third Tab")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Tab 2")
                }
        }
    }

}

#Preview {
    Tab()
}
