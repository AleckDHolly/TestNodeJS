//
//  Product.swift
//  TestNodeJS
//
//  Created by Aleck David Holly on 2025-11-02.
//

import Foundation

struct Product: Identifiable, Codable {
    var id: Int
    var productName: String
    var image: String
    var from: String
    var nutrients: String
    var quantity: String
    var price: String
    var organic: Bool
    var description: String
}
