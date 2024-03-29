//
//  Home.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
                    Color.white.edgesIgnoringSafeArea(.all)
                    ZStack{
                    
                        VStack(spacing: 0) {
                                        ScrollView(.vertical) {
                                            HeroImageView().onTapGesture{}
                                            //print("Tapped")
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
                           
                       } cartAction: {
    
                       }
                }
            }
        
        
    }
    @ViewBuilder
        private func HeroImageView() -> some View {
             ZStack {
            Image("Hero")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(maxWidth: .infinity)
                 .frame(height: 620)

            Button {
                print("Explore Collection Button Click")
            } label: {
                RoundedRectangle(cornerRadius: 30).overlay {
                    Text("Explore Collection")
                        .font(Font.custom("Tenor Sans", size:20))
                        .foregroundColor(.white)
                }
                .frame(width: 253, height: 40)
                .tint(.black.opacity(0.4))
                .offset(.init(width: 0, height: 250))
               }

            }
        }

        @ViewBuilder
        private func NewArrivalView() -> some View {

        }

        @ViewBuilder
        private func CollectionsView() -> some View {

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
