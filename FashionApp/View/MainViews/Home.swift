//
//  Home.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.
//

import SwiftUI


struct Home: View {
    
    @State var presentSideMenu = false
    @State var presentSideCart = false
    
    
    private var categories = [Categories.All.rawValue, Categories.Apparel.rawValue, Categories.TShirt.rawValue, Categories.Bag.rawValue]
    
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                        Color.white.edgesIgnoringSafeArea(.all)
                        ZStack{
                        
                            VStack(spacing: 0) {
                                            ScrollView(.vertical) {
                                                HeroImageView()
                                                CategoryTiles()
                                                TopFashionTiles()
                                                NewArrival()
                                               
                                                
                                                
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
                               presentSideMenu.toggle()
                               
                           } cartAction: {
                               presentSideCart.toggle()
                           }
                    }
                SideMenu()
                SideCart()
                }
            .navigationBarHidden(true)
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
    private func CategoryTiles() -> some View {
     
   
           ScrollView(.horizontal) {
               HStack(spacing: 10) {
                   // Example color boxes with text for categories
                   Color.white
                       .frame(width: 80, height: 30)
                       .cornerRadius(8)
                       .overlay(Text("Red").foregroundColor(.white))
                   
                   Color.Default
                       .frame(width: 100, height: 40)
                       .cornerRadius(15)
                       .overlay(Text("WOMEN").foregroundColor(.white))
                   
                   Color.Default
                       .frame(width: 100, height: 40)
                       .cornerRadius(15)
                       .overlay(Text("MEN").foregroundColor(.white))
                   Color.Default
                       .frame(width: 100, height: 40)
                       .cornerRadius(15)
                       .overlay(Text("KID").foregroundColor(.white))
                   
                   
                   // Add more color boxes with text for each category as needed
               }
               .padding(.horizontal, 20)
           }
    }
    
    @ViewBuilder
    private func TopFashionTiles() -> some View {
        Text("Top Fashion")
            .font(.system(size: 28))
            .foregroundStyle(Color.black)
            .padding(.top, 20)
        
        // Implement your horizontal scroll view for top fashion tiles here
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                Image("topf1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 165, height: 200)
                    .cornerRadius(5)
                    .shadow(radius: 1)
                Image("topf2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 165, height: 200)
                    .cornerRadius(5)
                    .shadow(radius: 1)
                Image("topf3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 165, height: 200)
                    .cornerRadius(5)
                    .shadow(radius: 1)
                Image("topf4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 165, height: 200)
                    .cornerRadius(5)
                    .shadow(radius: 1)
               
            }
            .padding(.horizontal, 20)
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
                Image("Divider")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140)
                    .padding(.top, 10)
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
            SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
        }

        @ViewBuilder
        private func SideCart() -> some View {
            SideView(isShowing: $presentSideCart, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideCart)), direction: .trailing)
        }
}

#Preview {
    Home()
}
