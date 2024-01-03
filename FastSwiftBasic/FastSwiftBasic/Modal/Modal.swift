//
//  Modal.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/3/24.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal : Bool = false
    
    var body: some View {
        VStack{
            Text("메일 페이지 입니다.")
            
            Button{
              showModal = true
            } label: {
                Text("Modal 화면 전환")
            }
        }
        .sheet(isPresented: $showModal, content: {
            Detail(showModal: $showModal)
        })
    }
}

#Preview {
    Modal()
}
