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

let age2023 : Int = 26  // 변수 재할당 불가능

print("안녕하세요! 저는 \(age2023)살 입니다.")

class Person {
    // Upper Camel Case : type(class, struct, enum, extension ...)
    var name : String = "gyuhee"
    var age : Int = age2023-1
}

let gyuhee : Person = Person()
print(gyuhee)
print("\n########################\n")
dump(gyuhee)


/* 상수와 변수 */

// 상수의 선언 -> 변경 불가
// let 이름 : 타입 = 값

// 변수의 선언 -> 변경 가능
// var 이름 : 타입 = 값

// 값의 타입이 명확하다면 타입은 생략가능
// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 합니다.
let sum : Int
let inputA = 100
let inputB = 200

sum = inputA + inputB; print(sum) // 변경 불가

/* Swift 기본 데이터 타입 */
/* Bool, Int, UInt, Float, Double, Character, String */
// 다른 데이터 타입간의 자료 교환이 까다롭다.
var someBool1 = true
var someBool2 : Bool = true
dump(someBool1)
print(someBool2)
// someBool2 = 0
// 0, 1은 Int로만 인식된다. ture, false 아님
someBool2 = false
print(someBool2)

// UInt 음수는 안된다 X
var someUInt : UInt = 200

var someCharacter : Character = "🫶🏻"

print(someCharacter)
