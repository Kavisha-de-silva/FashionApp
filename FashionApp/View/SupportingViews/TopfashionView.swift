//
//  TopfashionView.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC05 on 2024-04-06.
//

import SwiftUI

struct TopfashionView: View {
    var product: Products
    
    var body: some View {
        
        NavigationLink{
            ProductsDetailsView(product: product)
        } label: {
            VStack {
                Image(product.Image[2])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 165, height: 200)
                    .cornerRadius(5)
                    .shadow(radius: 1)
                
                
            }
            
            /*NavigationLink {
             ProductDetailsView(product: product)
             } label: {*/
            
            // }
            
        }
    }
}

#Preview {
    TopfashionView(product: product1)
}
