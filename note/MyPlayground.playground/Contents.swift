import UIKit

var greeting = "Hello, playground"


/* struct VS class */
struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

var first = ValueType() // 첫번째 구조체 인스턴스 (①)
var second = first // 두번째 구조체 인스턴스 (②)
second.property = 2

print(first.property)
print(second.property)

var third = ReferenceType() // 첫번째 클래스 인스턴스 (③)
var fourth = third // 두번째 클래스 인스턴스 (④)
fourth.property = 2

print(third.property)
print(fourth.property)



/** 콘솔로그와 문자열 보간법 */
import Swift

let age : Int = 26  // 변수 재할당 불가능

print("안녕하세요! 저는 \(age)살 입니다.")

