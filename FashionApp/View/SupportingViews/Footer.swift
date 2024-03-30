//
//  Footer.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-30.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        VStack {
            Image("Openfashion")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Image("Footer")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    Footer()
}
