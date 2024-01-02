//
//  ListLoop.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/2/24.
//

import SwiftUI

struct ListLoop: View {
    
    var fruits : [String] = ["Apple","Banana","Cherry","DoubleKiwi","Elder berry"]
    
    var price : [String] = ["1000","3000","4000","5000","6000"]
    
    var count = 0
    
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(fruits, id : \.self){
                    fruit in
                    HStack{
                        Text(fruit)
                        
                     
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
