//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
import Swift

/*
Any - Swift 의 모든 타입을 지칭하는 키워드
AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
nil - 없음을 의미하는 키워드
*/

// MARK : - Any

var someAny : Any = 100
someAny = "어떤 타입도 수용 가능합니다."
someAny = 123.12

// 오류 발생
// let someDouble : Double = someAny

// MARK : - AnyObject

class SomeClass1 {}
class SomeClass2 {}
var someAnyObject : AnyObject = SomeClass1()

someAnyObject = SomeClass2()



// MARK : - nil
// 모든 타입에 nil(없음)은 포함되지 않는다.
// someAny = nil
// someAnyObject = nil



/* 컬렉션 타입 */
/* Array, Dictionary, Set *
 Array - 순서가 있는 리스트 컬렉션
 Ditionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */


// MARK : - Array
// 빈 Int Array 생성
var integer : Array<Int> = Array<Int>()
integer.append(1)
integer.append(2)
integer.append(3)
integer.append(100)

integer.count
// integer.append(contentsOf: 0)
integer.capacity
integer.endIndex
integer.remove(at: 1)
integer.reversed()
integer.reverse()
integer.contains(100)
integer.removeLast()
integer
integer.removeAll()

// Int 형만 들어갈 수 있음
print("\n################\n")
let arr7 = Array(1...5) // CountableClosedRange<Int> : Sequence
let chars = Array("hello world")

var array1 : [Any] = []

array1.append("🤍")
array1.append(0)
array1.append("🖤")
print(array1)


// MARK : - Dictionary
// key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary : Dictionary<String, Any> = [String:Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
print(anyDictionary)
anyDictionary["someKey"] = 200
print(anyDictionary)

anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary)

let emptyD : [String:String] = [:]
let initD : [String:String] = ["name" : "gyuhee", "gender" : "female"]
let someValue : String? = initD["name"]
print(type(of : someValue))
print(someValue)
print(someValue!)

/* Optional<String> 에서 Optional 이란 ?
 - 안전성의 기본 바탕에 있는 중요한 요소 중 하나
 - Type casting이나 nil value 체크 등에 있어서 중요한 역할
 - Optional은 '?'을 통해 표현된다.
    ex) 이 변수에 값이 들어갈 수도 있고, 아닐 수도 있어(nil)
 - Swift에서는 기본적으로 변수 선언시 nil값이 들어가는 것을 허용하지 않습니다.
    ex) 런타임 에러가 아닌 컴파일 에러
 - Optional<String> 형이 아닌 String 형으로 출력하고 싶을 때 사용하는 것이 '!'입니다
 => Forced Unwrapping
 
 */

class Square {
  var sideLength: Double
  init(sideLength: Double){
    self.sideLength = sideLength
  }
}
// 클래스를 Optional 타입(?)으로 선언
// sideLength1도 Optional 타입(?)으로 선언
// 값 출력시 !를 쓰면 정상 출력
let optionalSquare1: Square? = Square(sideLength: 2.5)
let sideLength1 = optionalSquare1?.sideLength
// 클래스를 Optional 타입(?)으로 선언
// sideLength2를 Optional 타입(!)으로 선언
// 값은 unwrap 상태이므로 !가 없어도 출력(있으면 !를 2번 쓰므로 에러)
let optionalSquare2: Square? = Square(sideLength: 2.5)
let sideLength2 = optionalSquare2!.sideLength
// sideLength3를 Optional 타입(!)으로 선언
// 이를 Implicitly Unwrapped Optional이라고 부릅니다.
// 클래스와 sideLength3 모두 unwrap 상태이므로 !가 없어도 출력(있으면 !를 2번 쓰므로 에러)
let optionalSquare3: Square! = Square(sideLength: 2.5)
let sideLength3 = optionalSquare3!.sideLength
print(optionalSquare1) // Optional(Square)
print(optionalSquare2) // Optional(Square)
print(optionalSquare3) // Square
print(sideLength1) // Optional(2.5)
print(sideLength2) // 2.5
print(sideLength3) // 2.5
print(sideLength1!) // 2.5
//print(sideLength2!) // error
//print(sideLength3!) // error



// MARK : - Set
// 빈 Int Set 생성 , 축약문법이 없음, 중복된 값이 없다.
var intergerSet : Set<Int> = Set<Int>()
intergerSet.insert(1)
intergerSet.insert(100)
intergerSet.insert(99)
intergerSet.insert(99)
intergerSet.insert(99)

let setA : Set<Int> = [1, 2, 3, 4, 5]
let setB : Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
let sortedUnion: [Int] = union.sorted()
let intersection : Set<Int> = setA.intersection(setB) // A와 B의 교집합
let subtracting1 : Set<Int> = setA.subtracting(setB) // A-B
let subtracting2 : Set<Int> = setB.subtracting(setA) // B-A


