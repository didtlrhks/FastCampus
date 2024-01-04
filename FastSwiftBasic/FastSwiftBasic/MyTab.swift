//
//  Mytab.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/4/24.
//

import SwiftUI

struct MyTab: View {
    var body: some View {
        
        TabView{
            TabDetail()
                .badge(1)
                .tabItem {
                    Label("received1" , systemImage: "tray.and.arrow.down.fill")
                }
           TabDetail2()
                .badge(2)
                .tabItem {
                    Label("Received2", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail3()
                .badge("리이오")
                .tabItem {
                    Label("Sent2", systemImage: "tray.and.arrow.down.fill")
                }
            TabDetail3()
                .badge("2")
                .tabItem {
                    Label("Account2", systemImage: "person.crop.circle.fill")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        
        
        
        
        
        
    }
}

#Preview {
    MyTab()
}
