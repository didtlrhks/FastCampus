//
//  TabDetail.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/4/24.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct TabDetail2 : View{
    var body: some View{
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack{
                Text("thiw is detail2")
                
                Button{
                    
                } label: {
                    Text("Countinue")
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                }
            }
        }
    }
}



struct TabDetail3 : View{
    var body: some View{
        ZStack{
            Color.blue.ignoresSafeArea()
            VStack{
                Text("thiw is detail2")
                
                Button{
                    
                } label: {
                    Text("Countinue")
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                }
            }
        }
    }
}
#Preview {
    TabDetail()
}
