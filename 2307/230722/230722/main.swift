//
//  main.swift
//  230722
//
//  Created by 김규희 on 2023/07/22.
//

import Foundation

print("Hello, World!")
print("Let's go to learn Loops Contents")

for number in 1..<5 { // a이상 b미만
    print(number)
}

for number in 1...5 { // a이상 b이하
    print(number)
}

print("단방향 범위, 범위가 정해져 있을 경우에만 사용 가능하다.")
let array = [1, 2, 3, 4, 5, 6, 7, 8]
for number in array[...3] {
    print(number)
}

for number in array[3...] {
    print(number)
}

print("~= : 범위 안에 값이 속하는지 확인하는 연산자")

let range = 1..<5


let fruits = ["Apple", "Banana", "Peach"]
let contacts = ["Adam" : 123456789, "James": 987654321]
let words = "supercalifragilist"
let closeRange = 1...5


for fruit in fruits {
    Timer.scheduledTimer(withTimeInterval: 3, repeats: false ) { Timer in
        print(fruit)
    }
    print(fruit)
    // print(fruit)
}


for person in contacts {
    print(person, type(of: person))
    print(person.key)
    print(person.value)
}

 
print(range ~= 1)      // true
print(range ~= 5)


print("WHILE LOOPS")

var now = Date().timeIntervalSince1970
print("now : ",now)
let oneSecondFromNow = now + 1
print("oneSecondFromNow", oneSecondFromNow)
"""
while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("\(now) : waiting")
}
"""

extension Date {
    var toString: String {
        let dateFormatter = DateFormatter()
        return dateFormatter.string(from: self)
    }
}

extension String {
    var toDate: Date? {
        let dateFormatter = DateFormatter()
        return dateFormatter.date(from: self)
    }
}

let currentDate = Date()
print(currentDate) // 2021-10-13 17:04:52 +0000
print(currentDate.toString) // ""
//print(currentDate.toString.toDate) // Optional(1999-12-31 15:00:00 +0000)


// Date to String
let date = Date() // 2021-10-13 17:16:15 +0000
let unixTime = date.timeIntervalSince1970 // 1634145375.8035932
let unixTimeStr = String(unixTime) // "1634145375.8035932"

// String to Date
let unixTime2 = Double(unixTimeStr) ?? 0.0 // 1634145375.8035932
let date2 = Date(timeIntervalSince1970: unixTime2) // 2021-10-13 17:16:15 +0000

print(date)
print(date2)

var fibo = Exercise()
for i in 1...5 {
    print(fibo.fibonacci(n: i))
}
