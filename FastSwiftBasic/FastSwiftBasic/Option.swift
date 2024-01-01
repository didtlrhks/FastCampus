//
//  Option.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/1/24.
//

import SwiftUI

struct Option: View {
    
    var leeo : People? = People(name: "Leeo", petName: "")
    var bami = People(name: "bami", petName: "coco")
    var berry = People(name: "berry", petName: "cookie")
    //var user1 = People(name: "", petName: )
    
    var body: some View {
        
        VStack{
            
            if let leeo = leeo {
                if let mbti = leeo.mbti{
                    if let name = mbti.name{
                }
            }
        }
        
//        if let leeoMbti.Name = leeo?.mbti?.name{
//        }else{
//        }
            // 체이닝이 중간에 하나라도 끊어지게 된다면 문제가 생기는구나
        //안전하게 하기위한 방법이다.
//            if let petName = leeo.petName{
//                Text("이름은 \(leeo.name) 애완동물 이름은 \(petName)")
//            }
//            else{
//                Text("이름은 \(leeo.name) 애완동물 이름은 없어요.")
//            }
            
            if let petName = bami.petName{
                Text("이름은 \(bami.name) 애완동물 이름은 \(petName)")
            }
            else{
                Text("이름은 \(bami.name) 애완동물 이름은 없어요.")
            }
            if let petName = berry.petName{
                Text("이름은 \(berry.name) 애완동물 이름은 \(petName)")
            }else{
                Text("이름은 \(berry.name) 애완동물 이름은 없어요.")
            }
          
            
            
            
          //  Text("이름은 \(berry.name) 애완동물 이름은 \(berry.petName)")
        }
    }
}

struct People{
    let name : String
    var petName : String?
    var mbti: MBTI?
    
}

struct MBTI{
    let name : String?
    
}

#Preview {
    Option()
}
