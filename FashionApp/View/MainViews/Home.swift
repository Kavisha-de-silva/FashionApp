//
//  Home.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.
//

import SwiftUI


struct Home: View {
    
    private var categories = [Categories.All.rawValue, Categories.Apparel.rawValue, Categories.TShirt.rawValue, Categories.Bag.rawValue]
    
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        ZStack{
                    Color.white.edgesIgnoringSafeArea(.all)
                    ZStack{
                    
                        VStack(spacing: 0) {
                                        ScrollView(.vertical) {
                                            HeroImageView()
                                            NewArrival()
                                            Image("Brand")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                            
                                            CollectionView()
                                            Footer()
                                            
                                            Spacer()
                                           
                                        }
                                        .edgesIgnoringSafeArea(.all)
                                    }
                                        .padding(.top, 50)
                        }
                        
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //.overlay{
                    
                    //}
                   .overlay(alignment: .top){
                       HeaderView {
                           
                       } cartAction: {
    
                       }
                }
            }
        
        
    }
    @ViewBuilder
        private func HeroImageView() -> some View {
             ZStack {
            
            Image("MainBanner")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(maxWidth: .infinity)
                 .frame(height: 520)

            Button {
                print("Explore Collection Button Click")
            } label: {
                RoundedRectangle(cornerRadius: 30).overlay {
                    Text("Explore Collection")
                        .font(.system(size:20))
                        .foregroundColor(.white)
                }
                .frame(width: 253, height: 40)
                .tint(.black.opacity(0.4))
                .offset(.init(width: 0, height: 220))
               }

            }
        }

        @ViewBuilder
        private func NewArrival() -> some View {
            Text("New Arrival")
                .font(.system(size:25))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .frame(width: 225, height: 32, alignment: .top)
                .padding(.top, 20)
            
            Image("Divider")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140)
                .padding(.top, 10)
            
            VStack{
                HStack(spacing: 20){
                    ForEach(0..<categories.count, id: \.self){ i in
                        CategoryView(isSelected: i == selectedCategory, title: categories[i])
                            .onTapGesture {
                                selectedCategory = i
                            }
                    }
                }
                .frame(maxWidth: .infinity)
                
                HStack{
                    ProductItems(product: product1)
                    ProductItems(product: product2)
                }
                HStack{
                    ProductItems(product: product1)
                    ProductItems(product: product2)
                }
                Button {
                    
                } label: {
                    HStack(alignment: .center, spacing: 8) {
                        Text("Explore More")
                            .font(.system(size:20))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.BodyGrey)
                            
                        Image(systemName: "arrow.forward")
                            .frame(width: 18, height: 18)
                    }
                }
                .tint(Color.BodyGrey)
                .padding(12)
            }
        }

        @ViewBuilder
        private func CollectionView() -> some View {
            Text("Collections")
                .font(.system(size: 28))
                .foregroundStyle(Color.black)
            
            Image("Collection 1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 244, alignment: .top)
                .clipped()
            
            Image("Collection 2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 244, alignment: .top)
                .clipped()
            
            
            
        }

        @ViewBuilder
        private func SideMenu() -> some View {

        }

        @ViewBuilder
        private func SideCart() -> some View {

        }
}

#Preview {
    Home()
}
