//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by 김규희 on 2023/09/12.
//

import SwiftUI

struct ContentView: View {
    
    // 이 변수를 업데이트하고 Swift가 ContentView를 다시 생성하게 합니다.
    // 변수 값이 바뀌거나 업데이트 될때마다
    @State var rightDiceNumber = 1
    @State var leftDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                Image("diceeLogo")
                Spacer()
                HStack{
                    ExtractedView(n: rightDiceNumber)
                    ExtractedView(n: leftDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    // Xcode에서 "self"는 변경이 불가능하다라는 오류 발생
                    /*  var rightDiceNumber = 1 -> @State 속성 래퍼 써주기
            rightDiceNumber = Int.random(in:  1...6) -> self. 붙여주기
        */
                    self.rightDiceNumber = Int.random(in:  1...6)
                    self.leftDiceNumber = Int.random(in:  1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                Spacer()
            }
        }
    }
}

struct ExtractedView: View {
    
    let n : Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode:  .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

