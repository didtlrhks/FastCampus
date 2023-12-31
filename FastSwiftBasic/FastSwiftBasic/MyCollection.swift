//
//  MyCollection.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 12/31/23.
//

import SwiftUI

struct MyCollection: View {
    
    let name : String = "Leeo" // 바꿀수없음
    var name2: String = "leeo" // 바꿀수 있음

    
    var foods : [String] = ["aggs","banana", "beans"]
    // 즉 상수와 변수의 개념
    var Zazz : [String] = ["didaidodo","biabidido","didaidid"]
    
    var hiphop : [String] = ["wowaa","raaap","wowaa"]
    var koEngDict: [String:String] = ["사과" : "Apple"]
    var body: some View {
        VStack{
            
          
            Text(koEngDict["사과"]!)
            //Text(koEngDict["비"]) // 없으니까 터지겠지?
        }
    }
}

#Preview {
    MyCollection()
}
