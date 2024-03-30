//
//  HeaderView.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.
//

import SwiftUI

struct HeaderView: View {
   //var menuAction: ButtonAction
   //var cartAction: ButtonAction

    var menuAction: ButtonAction
    var cartAction: ButtonAction
    
    var body: some View {
        ZStack{
            HStack{
                Button{
                    menuAction()
                } label: {
                    Image("Menu")
                          .resizable()
                         .aspectRatio(contentMode: .fit)
                    }
                  .frame(width: 24, height: 24)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(.leading, 20)

                  Image("Logo1")
                           .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width:84, height: 84)

                Button{
                    cartAction()
                } label: {
                    Image("shopping bag")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                    }
                  .frame(width: 24, height: 24)
                  .frame(maxWidth: .infinity, alignment: .trailing)
                  .padding(.trailing, 20)
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 46)
            .background(.white)
            .shadow(radius: 0.3)
        }
        }


