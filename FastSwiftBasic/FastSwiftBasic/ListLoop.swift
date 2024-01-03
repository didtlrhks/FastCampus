//
//  ListLoop.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/2/24.
//

import SwiftUI


struct Fruit : Hashable {
    let name : String
    let matchFavoriteName : String
    let price : Int
}

struct ListLoop: View {
    @State var favoriteFruits = [
    
        Fruit(name:"apple",matchFavoriteName:"Banana",price:1000),
        Fruit(name: "Banana", matchFavoriteName: "Banana", price: 2000),
        Fruit(name:"apple",matchFavoriteName:"kiwi",price:3000),
        Fruit(name:"Double Kiwi",matchFavoriteName:"berry",price:4000),
        Fruit(name:"apple",matchFavoriteName:"cherry",price:7000),
        Fruit(name:"Apple",matchFavoriteName:"Banana",price:1000)
    
    ]
    
  
    var count = 0
    
    
    @State var fruitName: String = ""
    var body: some View {
        NavigationStack{
            
            VStack{
                
                HStack{
                    TextField("insert fruit name", text: $fruitName)
                    Button{
                        favoriteFruits.append(Fruit(name: fruitName, matchFavoriteName: "Apple", price: 1000))
                        
                    }label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                List {
                    ForEach(favoriteFruits, id : \.self){
                        fruit in
                        VStack(alignment: .leading)
                        {
                            Text("name : \(fruit.name)")
                            Text("matchFruitName : \(fruit.matchFavoriteName)")
                            Text("price : \(fruit.price)")
//                            Text("name : \(fruit.name)")
//                            Text("name : \(fruit.name)")
//                            Text("name : \(fruit.name)")
//                            
                            
                        }
                        
                    }.onDelete{
                        indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)
                    }
                    
                    
                    
                }
                .navigationTitle("Fruit List")
            }
        }
    }
}

#Preview {
    ListLoop()
}
