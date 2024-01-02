//
//  Layout.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/2/24.
//

import SwiftUI

struct Layout: View {
    var body: some View {
     //밖에 보이는거부터 하자
        VStack
        {
            
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200)
                .padding()
            
            
            Text("Text Element 1")
                .font(.headline)
                .padding()
            
            
            Text("Text Element 2")
                .font(.subheadline)
                .padding()
                
            Text("Text Element 3")
                .font(.body)
                .padding()
            
            HStack{
                MyButton(buttonTitle: "버튼1", buttonColor: .red)
                    .padding()
                MyButton(buttonTitle: "버튼2", buttonColor: .white)
                    .padding()
                
               
            }
            
            Button{
                
            }label: {
                VStack{
                    
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex")
                    
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            }
            
        }
    }
}

struct MyButton: View {
    
    var buttonTitle: String
    var buttonColor : Color
    
    var body: some View{
        
        
        Button{
            
        }label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.green)
                .font(.headline)
                .cornerRadius(10)

        }
    }
}

#Preview {
    Layout()
}
