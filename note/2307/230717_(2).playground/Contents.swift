import UIKit

var greeting = "Hello, playground"

let num = 10
 
switch num {
 case _ where num % 2 == 0:
    print("짝수")
    // fallthrough
default:
    print("홀수")
}

"""
switch 문에서도 where 을 사용할 수 있습니다. _는 swift 에서 underscore는 생략의 의미로 많이 사용 됩니다. switch case 문 뿐만 아니라 예를 들면 for loop, 나중에 배울 함수에서도 사용 할 수 있습니다. 첫번째 case를 보면 underscore로 비워두고 where을 이용하여서 특정 조건 여기선 짝수 값을 조건으로 넣었습니다. 해당 10은 조건을 만족하는 값이기 때문에 출력 값은 짝수가 됩니다.
"""

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

class EnumSwitch {
    
    static func calculator(d : Weekday) -> String {
        
        var day : Weekday = Weekday.mon
        day = d
        switch day {
        case .mon, .tue, .wed, .thu :
            //print("평일입니다.")
            return "평일입니다."
        case Weekday.fri :
            //print("조금 행복한 평일입니다.")
            return "조금 행복한 평일입니다."
        case .sat, .sun :
            // print("아주 행복한 주말입니다.")
            return "아주 행복한 주말입니다."
        }
    }
}

var day: Weekday = Weekday.mon
day = .fri

let days : [Weekday] = [.mon, .tue, .fri, .sun]
for day in days {
    print("\(day)는 \(EnumSwitch.calculator(d : day))")
    //EnumSwitch.calculator(d : day)
}

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
}

print("Fruit.peach.rawValue = \(Fruit.peach.rawValue)")


enum School : String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("School.middle.rawValue == \(School.middle.rawValue)")
print("School.university.rawValue == \(School.university.rawValue)")


let apple : Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5){
    print("rawValue가 5인 케이스는 \(orange) 입니다.")
} else {
    print("해당 케이스가 없습니다.")
}

enum Month {
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    case dec, jan, feb
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may :
            print("따스한 봄🌸")
        case .jun, .jul, .aug :
            print("여름 더워요☀️")
        case .sep, .oct, .nov :
            print("가을은 독서의 계절🍂")
        case .dec, .jan, .feb :
            print("추운 겨울❄️")
        }
    }
}

Month.apr.printMessage()
Month.jul.printMessage()
Month.sep.printMessage()
Month.dec.printMessage()
