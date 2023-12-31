//
//  function.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 12/31/23.
//

import SwiftUI

struct function: View {
    
   @State var inputnumber : Int = 5
    var body: some View {
        VStack{
            Text("Input number is \(inputnumber)")
            
            
            Button{
                inputnumber = plusFive(with: inputnumber)
               
            }
        label: {
            Text("+5")
        }
        }
    }
    
    func plusFive(with input: Int) -> Int {
        return input + 5
        
    }
}
//with 는 밖에서 뭐라고 부를지를 정한데
//왜 이름을 바꿔줌?
//가독성이래
#Preview {
    function()
}
