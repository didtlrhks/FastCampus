//
//  Elevator.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/1/24.
//

import SwiftUI

struct Elevator: View {
    
    @State var Elevator = Elevatorsturct()
    
    var body: some View {
        VStack{
            Text("층수 \(Elevator.level)")
            
            HStack{
                Button{
                    Elevator.goDown()
                }label: {
                    Text("아래로")
                }
                
                Button{
                    Elevator.goUp()
                }label: {
                    Text("위로")
                }
                
            }
        }
    }
    
    func goDown(_ level: Int) -> Int {
     return level - 1
    }
    
    func goUp(_ level: Int) -> Int {
        return level + 1
    }
    
}


struct Elevatorsturct {
    var level: Int = 1
   mutating func goDown(){
        level = level - 1
    }
   mutating func goUp(){
        level = level + 1
    }
}



#Preview {
    Elevator()
}
