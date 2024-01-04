//
//  Navigation.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/4/24.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["디테일뷰로 이동하기" , "디테일뷰로 이동하기 2"]
    let descriptions = ["데스티네이션입니다." , "데스티네이션입니다.2"]
    
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack{
            //스택안에 링크가 있으면 동작을 함
            List{
                ForEach([0,1], id : \.self) {
                index in
                    NavigationLink{
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }
                }
                
                
            }
            .toolbar {
                ToolbarItem{
                    Button{
                        showModal = true
                    }label: {
                        Text("add")
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("아이템 추가 페이지입니다.")
            })
            
            
                .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}
