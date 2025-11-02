//
//  StarterAPI.swift
//  TestNodeJS
//
//  Created by Aleck David Holly on 2025-11-02.
//

import Foundation

@Observable
class StarterAPI {
    static let shared = StarterAPI()
    var products = [Product]()
    
    func fetchProducts() {
        guard let url = URL(string: "http://127.0.0.1:3000/api") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else { return }
            
            do {
                let products: [Product] = try JSONDecoder().decode([Product].self, from: data)
                
                self.products = products
            } catch {
                print(error)
            }
        }.resume()
    }
}
