//
//  MyCar.swift
//  FastSwiftBasic
//
//  Created by 양시관 on 1/2/24.
//

import SwiftUI

struct MyCar: View {
    //var myCar: Driveable?
    var myCar : KIA = KIA()
    var broCar : Hyundai = Hyundai()
    let cars : [Driveable] = [KIA(),Hyundai()]//같은 설계를 가지고있다면 이렇게 가능한가보네
    
    
    
    @State var speed: Int = 10
    @State var speed1 : Int = 10
    var body: some View {
        VStack{
            Text("speed: \(speed)")
            Button{
                speed = myCar.speedDown(with: 3)
            }label: {
                Text("감속!")
            }
            
            Text("brocar speed: \(speed1)")
            Button{
                speed1 = broCar.speedDown(with: 3)
            }label: {
                Text("감속!")
            }
        }
       
    }
}

struct KIA: Driveable{
    func speedDown(with speed: Int) -> Int {
        print("속도가 0으로 줄어듭니다.")
        return speed - 5
    }
}

protocol Driveable {
    func speedDown(with speed : Int) -> Int
}

struct Hyundai: Driveable{
    func speedDown(with speed: Int) -> Int {
        print("속도가 촤촤촤 줄어듬")
        return speed - 9
    }
}

#Preview {
    MyCar()
}
