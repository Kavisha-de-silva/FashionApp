//
//  CartItem.swift
//  FashionApp
//
//  Created by NIBM-LAB04-PC04 on 2024-03-31.
//

import Foundation

class CartItem {
    var product: Products
    var count: Int = 0
    
    init(product: Products, count: Int) {
        self.product = product
        self.count = count
    }
    
}
