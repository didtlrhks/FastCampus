//
//  SwiftUIView.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/2/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack{
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding()
                .padding(.top,4)
            
            HStack{
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding()
                    .foregroundColor(.blue)
                
                
                VStack(alignment: .leading) {
                    
                    Text("copy & Paste Edits")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos with the people combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
                
            }
            HStack{
                Image(systemName: "spakle.square.fill.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal,7)
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading){
                    Text("Merge Duplicates")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos with the people combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    Onboarding()
}
