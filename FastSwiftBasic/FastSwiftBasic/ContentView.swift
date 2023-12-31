//
//  ContentView.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 12/31/23.
//

import SwiftUI

struct ContentView: View {
    
    var name : String = "리이오" // 대입의 개념
    //변수 사용의 이유란 유지보수를 편하게 해주는거구만..
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(name)님 안녕하세요!")
            Text(name)
            Text(name)
            Text(name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
