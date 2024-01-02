//
//  Exception.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/2/24.
//

import SwiftUI

struct Exception: View {
    
    @State var inputNumber = ""
    @State var resultNumber : Float = 0.0
    var body: some View {
        VStack{
            TextField("Placeholder" , text: $inputNumber)
            
            Text("나눈 결과는 다음과 같아요\(resultNumber)")
            
            Button{
                
                do{
                    
                  try resultNumber = devidedTen(with: (Float(inputNumber) ?? 1.0))
                } catch DividedError.dividedByZero{
                    print("0으로 나누었어요")
                }
                
                catch{
                    print(error.localizedDescription)
                }
               
            }label: {
                Text("나누기")
            }
        }
    }
    func devidedTen(with inputNumber : Float) throws -> Float {
        var result: Float = 0
        if inputNumber == 0 {
            throw DividedError.dividedByZero
        }else{
            result = 10 / inputNumber
        }
        result = 10 / inputNumber
        
        return result
    }
}

enum DividedError: Error{
    case dividedByZero
}

#Preview {
    Exception()
}
