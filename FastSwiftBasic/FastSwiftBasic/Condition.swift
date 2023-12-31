//
//  SwiftUIView.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 12/31/23.
//

import SwiftUI

struct Condition: View {
    
    var count = 7
    var hasLoggedIn = true
    
    
    
    var body: some View {
        if hasLoggedIn {
            Text("로그아웃?")
        } else{
            Text("로그인?")
        }
    }
}

#Preview {
    Condition()
}
