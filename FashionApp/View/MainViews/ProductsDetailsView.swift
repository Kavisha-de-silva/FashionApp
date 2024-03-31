//
//  ProductsDetailsView.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC04 on 2024-03-31.
//

import SwiftUI

struct ProductsDetailsView: View {
    @State var presentSideMenu = false
    @State var presentSideCart = false
    
    var product: Products
    
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            ZStack{
                VStack(spacing: 0) {
                    ScrollView{
                        TabView {
                            ForEach(0..<product.Image.count, id: \.self) { i in
                                
                                Image(product.Image[i])
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 500)
                                    .clipped()
                                
                            }
                        }
                        .tabViewStyle(.page)
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                        .frame(height: 500)
                        .padding([.leading, .trailing], 20)
                        
                        VStack(alignment: .leading) {
                            HStack(alignment: .top) {
                                Text(product.title)
                                    .font(.system(size:16))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.black)
                                Spacer()
                                Image("Export")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20)
                                
                            }
                            
                            Text("$\(product.price)")
                                .font(.system(size: 28))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.Default)
                        }
                        
                        .frame(maxWidth: .infinity)
                        .padding([.leading, .trailing], 20)
                        
                        Text("DESCRPTION")
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                            .padding(.top, 20)
                        
                        Text("\(product.description)")
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                            .padding(.top, 3)
                            .padding([.leading, .trailing], 20)
                        
                        Text("You may also like")
                            .font(.system(size: 22))
                            .foregroundColor(.black)
                            .padding(.top, 20)
                        
                        Image("Divider")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 140)
                            .padding(.top, 10)
                        
                        
                        VStack {
                            HStack(alignment: .top) {
                                ProductItems(product: product2)
                                ProductItems(product: product3)
                            }
                            
                            HStack(alignment: .top) {
                                ProductItems(product: product4)
                                ProductItems(product: product5)
                            }
                            
                            HStack(alignment: .center, spacing: 8) {
                                Text("Explore More")
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                
                                Image(systemName: "arrow.forward")
                                    .frame(width: 18, height: 18)
                                
                            }
                            .padding(12)
                            
                        }
                        Footer()
                        
                    }
                }
                .padding(.top, 50)
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
    ProductsDetailsView(product:product1)
}
