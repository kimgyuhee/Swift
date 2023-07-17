import UIKit

var greeting = "Hello, playground"

print(greeting)
"""
Q. 'static'과 'class' 프로퍼티/함수와의 차이점은 ?
'class' 프로퍼티/함수는 오버라이딩이 가능하지만,
'static'은 오버라이딩이 불가능하다는 점이다."
"""
class Student {
    var name : String = "Unknown"
    let `class` : String = "Swift"
    
    class func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    static func selfIntroduce(check: String) {
        print("static 메소드 -> \(check)")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

class Person {
    var name : String = "Unknown"
    let `class` : String = "IOS"
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}


Student.selfIntroduce()
var student1: Student = Student()
student1.name = "gyuhee"
student1.selfIntroduce()
Student.selfIntroduce(check: "Yes")

let student2 : Student = Student()
student2.name = "haha"
student2.selfIntroduce()


var student3: Student = Student()
student3.name = "hyemin"


let student4 : Student = Student()
student4.name = "jimin"


student2.name = "hoho"
student2.selfIntroduce()

student1 = student2
student1.selfIntroduce()
//student2 = student4 let은 수정 불가
