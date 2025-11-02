//
//  ContentView.swift
//  TestNodeJS
//
//  Created by Aleck David Holly on 2025-11-02.
//

import SwiftUI

struct ContentView: View {
    let starterAPI = StarterAPI.shared
    
    var body: some View {
        NavigationStack {
            List(starterAPI.products) { product in
                VStack(alignment: .leading) {
                    HStack {
                        Text(product.image)
                        Text(product.image)
                        Text(product.productName)
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    Text("From: \(product.from)")
                        .fontWeight(.bold)
                    Text("\(product.price)$")
                        .fontWeight(.bold)
                    Text("Quantity: \(product.quantity) per 📦")
                        .fontWeight(.semibold)
                    Text(product.description)
                    
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Node Farm")
            .listStyle(.plain)
            .task {
                starterAPI.fetchProducts()
            }
        }
    }
}

#Preview {
    ContentView()
}
