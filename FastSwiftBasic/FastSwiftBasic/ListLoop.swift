//
//  ListLoop.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/2/24.
//

import SwiftUI


struct Fruit : Hashable {
    let name : String
    let favorite : String
    let price : Int
}

struct ListLoop: View {
    var favoriteFruits = [
    
        Fruit(name:"apple",favorite:"Banana",price:1000),
        Fruit(name: "Banana", favorite: "Banana", price: 2000),
        Fruit(name:"apple",favorite:"kiwi",price:3000),
        Fruit(name:"Double Kiwi",favorite:"berry",price:4000),
        Fruit(name:"apple",favorite:"cherry",price:7000),
        Fruit(name:"Apple",favorite:"Banana",price:1000)
    
    ]
    
  
    var count = 0
    
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(favoriteFruits, id : \.self){
                    fruit in
                    VStack(alignment: .leading)
                    {
                        Text("name : \(fruit.name)")
                        Text("name : \(fruit.favorite)")
                        Text("name : \(fruit.price)")
                        Text("name : \(fruit.name)")
                        Text("name : \(fruit.name)")
                        Text("name : \(fruit.name)")
                        
                     
                    }
                   
                }
                   
                    
                
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    ListLoop()
}
