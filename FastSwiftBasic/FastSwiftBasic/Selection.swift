//
//  Selection.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/1/24.
//

import SwiftUI

struct Selection: View {
    
    @State var myDirection: Direction1 = .east
    var body: some View {
        VStack{
            switch myDirection {
            case .north:
                Text("북쪽은 추워여")
            case .west:
                Text("서쪽은 석양이 이뻐요")
            case .east:
                Text("동쪽으로 해보러 갈래여/ ")
            case .south:
                Text("남쪽은 더워여")
            }
            
            
            Button{
                
                switch myDirection {
                case .north, .west:
                    myDirection = .east
                
                case .east:
                    myDirection = .south
                case .south:
                    myDirection = .west
              
                    
                }
                
                
                myDirection = .east
            }label: {
                Text("돌리기")
            }
        }
        
    }
}



enum Direction1 : String{
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}


#Preview {
    Selection()
}
