//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/1/24.
//

import SwiftUI

struct Diff: View {
    let mycar = Car(name: "리어카", owner: "리이오")
    let maKar = Kar(name: "리어카2", owner: "리이오2")
    
    
    var body: some View {
        VStack{
            Text("\(mycar.name)의 주인은 \(maKar.owner)")
            
            Button{
                mycar.sayHi()
            }
        label: {
                Text("출발")
            }
        }
    }
}

struct Car{
    let name :String
    let owner : String
    
    func sayHi(){
        print("hi \(owner)")
    }
}

class Kar{
    let name : String
    let owner : String
    
    func sayHi(){
        print("hi \(owner)")
    }
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}// class 는 어떻게 생겨먹었는지도 나와있어야됌

#Preview {
    Diff()
}
