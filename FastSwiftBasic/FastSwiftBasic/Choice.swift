//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/1/24.
//

import SwiftUI

struct Choice: View {
    
    
    var direction : Direction = .north
    var member: Member = .koko
    
    
    var body: some View {
        Text("방향은 \(direction.rawValue)쪽 입니다.")
        Text("멤버는 \(member.rawValue) 입니다.")
    }
}

enum Member : String {
    case leeo = "리오"
    case tom = "톰"
    case bami = "바미"
    case koko = "코코"
}


enum Direction : String{
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Choice()
}
