//
//  Generic.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/2/24.
//

import SwiftUI

   

struct Generic: View {
    @State var input = ""
    
    @State var myStack = MyStack<Int>()
  //  @State var myFloatStack = MyFloatStack()
    
    var body: some View {
        VStack{
            TextField("숫자를 입력해주세요.",text: $input)
            
            Button{
                myStack.insertValue(input: Int(input) ?? 0)
            }label: {
                Text("저장")
            }
            
            Button{
                myStack.showData()
            }label: {
                Text("출력")
            }
            
        }
    }
}

struct MyStack<T>{
    var data: [T] = []
    
   mutating func insertValue(input : T) {
        data.append(input)
    }
    
    func showData() {
        data.forEach{
            item in
            print(item)
        }
    }
    
}


//struct MyFloatStack{
//    var data: [Float] = []
//    
//   mutating func insertValue(input : Float) {
//        data.append(input)
//    }
//    
//    func showData() {
//        data.forEach{
//            item in
//            print(item)
//        }
//    }
//    
//}


#Preview {
    Generic()
}
