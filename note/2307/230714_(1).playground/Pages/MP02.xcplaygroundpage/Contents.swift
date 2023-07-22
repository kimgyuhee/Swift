/*
 Objective-C는 C언어를 확장한 언어
 C언어에서 #include에 해당하고, Swift에선 import에 해당
 
 보통 헤더파일의 존재 이유는 어떤 것을 선언해 놓기 위해서
 
 @interface라는 놈은 클래스의 선언이 시작된다! 라는 부분임
 어떤 클래스를 상속받고, 어떤 변수와 메서드를 쓸 건지 여기서 선언
 @interface로 시작된 녀석은 꼭 끝에 @end가 있어야 함
 => 영혼의 짝임
 */

import Swift

/* 함수 */

/* 함수 선언의 기본 형태
 func 함수이름(매개변수1이름 : 매개변수1타입, 매개변수2이름 : 매개변수2타입 ... ) -> 반환타입(void) {
    함수 구현부
    return 반환값 // (void일때 없음)
 }
 */

func sum(a : Int, b : Int) -> Int {
    return a + b
}

print(sum(a: 3, b: 5))

// 전달인자 레이블
func greeting(to friend : String, from me : String) -> String {
    return "Hello \(friend)! I'm \(me)"
}

func g1(to friend : String, from me : String) -> Void {
    print("Hello \(friend)! I'm \(me)")
}

print(greeting(to : "haha", from : "gyuhee"))

// 가변 매개변수
func sayHelloToFriends(me : String, friends : String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriends(me : "gyuhee"))
print(sayHelloToFriends(me : "gyuhee", friends : "haha", "hoho"))

var funcVar1: (String, String) -> Void = g1(to: from:)
var funcVar2: (String, String) -> String = greeting(to: from:)
// 오류 발생 : var funcVar2: (String, String) -> Void = g1( friend: me: )
funcVar1("gyuhee", "haha")
funcVar2("gyuhee", "haha")

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function : g1(to:from:))

runAnother(function : funcVar1)


/* Switch */

var someInteger : Int = 100

// 기본적으로 각 case 마다 break 내제되어 있음
// 그것이 싫으면 fallthrough 명령어 사용
switch someInteger {
case 0 :
    print("Zero")
case 1..<100 :
    print("1~99")
case 100 :
    print("100")
    fallthrough
case 101...Int.max:
    print("over 100")
default :
    print("unknown")
}

print(Int.max)

var intList : [Int] = [1, 2, 3, 4, 5]
/* 반복문 */
/* repeat-while */
var value : Int = 1
repeat {
    print(value)
    intList.removeLast()
    value+=1
} while intList.count > 0
