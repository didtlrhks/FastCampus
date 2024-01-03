//
//  Detail.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/3/24.
//

import SwiftUI

struct Detail: View {
    
    @Binding var showModal : Bool
    var body: some View {
        Text("모달 페이지입니다.")
        
        Button{
            showModal = false
            
        }label: {
            Text("닫기")
        }
    }
}

#Preview {
    Detail(showModal: .constant(true))
}
