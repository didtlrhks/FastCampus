//
//  VariableType.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 12/31/23.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "Leo"
    var age: Int = 20
    var height : Float = 183.6
    var weight: Double = 70.6
    var havePet: Bool = false
        
    
    
    var body: some View {
        VStack{
            Text("\(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(weight)")
            Text("\(havePet.description)")
        }
    }
}

#Preview {
    VariableType()
}
