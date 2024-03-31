//
//  ProductItems.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-30.
//

import SwiftUI

struct ProductItems: View {
    var product: Products
    
    var body: some View {
        
        NavigationLink{
            ProductsDetailsView(product: product)
        } label: {
            VStack {
                Image(product.Image[0])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 165, height: 200)
                    .cornerRadius(5)
                    .shadow(radius: 1)
                
                Text(product.title)
                    .font(.system( size: 12))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.BodyGrey)
                    .frame(width: 165, alignment: .leading)
                
                Text("$\(product.price)")
                    .font(.system( size: 16))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.Default)
                    .frame(width: 165, alignment: .leading)
                    .padding(.top, 2)
            }
            
            /*NavigationLink {
             ProductDetailsView(product: product)
             } label: {*/
            
            // }
            
        }
    }
}

#Preview {
    ProductItems(product: product1)
}
