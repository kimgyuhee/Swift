"""
value VS reference
Struct/Enum VS Class (값타입, 참조타입)

value : 데이터를 전달할 때 값을 복사하여 전달
reference : 데이터를 전달할 때 값의 메모리 위치를 전달

"""
import Swift

struct ValueType {
    var value = 1
}

class ReferenceType {
    var value = 1
}

let firstValueInstance = ValueType()
var secondValueInstance = firstValueInstance
secondValueInstance.value = 2

print("Value Type")
print(firstValueInstance.value)
print(secondValueInstance.value)

let firstReferenceInstance = ReferenceType()
var secondReferenceInstance = firstReferenceInstance
secondReferenceInstance.value = 2

print("Reference Type")
print(firstReferenceInstance.value)
print(secondReferenceInstance.value)


/* 클로저, 코드의 블럭 */
// 함수 : 이름이 있는 클로저

// 함수를 사용한다면
func sumFunction (a : Int, b : Int) -> Int {
    return a+b
}

var sum : Int = sumFunction(a: 1, b: 2)
print(sum)

var sum_closer : (Int, Int) -> Int = { (a:Int, b: Int) -> Int in
    return a+b
}

sum = sum_closer(1,4)
print(sum)

sum_closer = sumFunction( a: b: )
var r : Int = sum_closer(4,10)
print(r)

// 함수의 전달인로서의 클로서

let add: (Int, Int) -> Int
add = { (a:Int, b: Int) -> Int in
    return a + b
}

let sub: (Int, Int) -> Int
sub = { (a:Int, b: Int) -> Int in
    return a - b
}

let div: (Int, Int) -> Int
div = { (a:Int, b: Int) -> Int in
    return a / b
}


let mul: (Int, Int) -> Int
mul = { (a:Int, b: Int) -> Int in
    return a * b
}

func calculate(a : Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated : Int
var aa : Int = 50
var bb : Int  = 10
calculated = calculate(a: aa, b: bb, method: add)
print("덧셈 : \(aa) +\(bb) = \(calculated)")

calculated = calculate(a: 50, b: 10, method: sub)
print("뺄셈 : \(calculated)")

calculated = calculate(a: 50, b: 10, method: mul)
print("곱셈 : ", calculated)

calculated = calculate(a: 50, b: 10, method: div)
print("나눗셈 : ",calculated)
