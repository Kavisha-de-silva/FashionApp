//
//  ProductList.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC04 on 2024-03-31.
//

import SwiftUI

struct ProductList: View {
    @State var presentSideMenu = false
    @State var presentSideCart = false
    
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        ZStack{
                Color.white.edgesIgnoringSafeArea(.all)
                ZStack{
                    VStack(spacing: 0) {
                        HStack {
                                Text("PRODUCTS")
                                .font(.system(size: 24))
                                    .foregroundColor(.black)
                                Spacer()
                            }
                        .padding()
                        
                        ScrollView(.vertical) {
                            VStack {
                                ScrollView(.vertical) {
                                    LazyVGrid(columns: adaptiveColumns) {
                                        ForEach(0..<10, id: \.self) { i in
                                            ProductItems(product: products.randomElement()!)
                                        }
                                        
                                    }
                                }
                                .scrollIndicators(.hidden)
                            }.padding([.leading, .trailing], 20)
                            Footer()
                        }
                        .edgesIgnoringSafeArea(.all)
                    }
                    .padding(.top, 56)
                }
                        
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //.overlay{
                    
                    //}
                   .overlay(alignment: .top){
                       HeaderView {
                           presentSideMenu.toggle()
                           
                       } cartAction: {
                           presentSideCart.toggle()
                       }
                }
            SideMenu()
            SideCart()
            }
    }
    @ViewBuilder
    private func SideMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }

    @ViewBuilder
    private func SideCart() -> some View {
        SideView(isShowing: $presentSideCart, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideCart)), direction: .trailing)
    }
}

#Preview {
    ProductList()
}
