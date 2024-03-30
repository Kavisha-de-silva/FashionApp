//
//  MenuView.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC07 on 2024-03-30.
//

import SwiftUI

struct MenuViewTemp: View {
    @State var presentSideMenu = true
    
    var body: some View {
        ZStack{
            MenuView()
        }.background(.black)
    }
    
    @ViewBuilder
    private func MenuView() -> some View{
        SideView(isShowing: $presentSideMenu, content: AnyView(MenuViewContent(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
}

struct MenuViewTemp_Previews: PreviewProvider{
    static var previews: some View{
        MenuViewTemp()
    }
}

struct MenuViewContent: View {
    @Binding var presentSideMenu: Bool
    
    var categories = [Categories.All.rawValue, Categories.Apparel.rawValue, Categories.TShirt.rawValue, Categories.Bag.rawValue]
    
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        HStack{
            ZStack{
                VStack(alignment: .leading){
                    HStack(spacing:10) {
                        
                    }
                }
            }
        }.padding([.leading, .trailing],20)
    }
}

func SideMenuTopView() -> some View {
    VStack {
        HStack {
            
            
            
        }
    }
    .frame(maxWidth: .infinity)
    .padding(.leading, 10)
    .padding(.top, 40)
    .padding(.bottom, 30)
}
