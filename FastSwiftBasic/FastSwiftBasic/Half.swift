//
//  Half.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 12/31/23.
//

import SwiftUI
import Foundation


struct Half: View {
    
    var names : [String] = ["라이오","존", "바미", "테리우스", "올리비아"]
    
    var body: some View {
        List{
            ForEach(names, id :\.self){
                name in
                var welcome = sayHi(to : name)
                if name == "리이오"{
                    Text("기다렸습니다.\(welcome)")
                }
                else{
                    Text("\(welcome)")
                }
                
            }
        }
    }
        func sayHi(to name : String) -> String{
            return ("\(name) 님 반갑습니다.")
        }
    }
    
    


#Preview {
    Half()
}
