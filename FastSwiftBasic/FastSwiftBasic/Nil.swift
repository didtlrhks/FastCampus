//
//  nil.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/1/24.
//

import SwiftUI

struct Nil: View {
    
    var petName: String? = "coco"
    var bami: String = "Bami"
    var petName2 : String = "coco"
    var name: String = "Leo"
    
    var body: some View {
        VStack{
            //Text("이름은 \(name)입니다. 펫네임은 \(petName2)")
            Text("이름은 \(bami) 펫네임은 \(petName2)입니다.")
        }
        .onAppear{
        print("이름은 \(name)입니다. 펫네임은 \(petName)")
        }
    }
}

#Preview {
    Nil()
}
