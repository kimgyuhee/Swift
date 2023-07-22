class Exercise  {
    func fibonacci(n: Int) -> [Int] {
        if n == 1 {
            return [0]
        } else if n == 2 {
            return [0, 1]
        } else {
            var answer = [0, 1]
            for i in 0..<n-2 {
                let a : Int = answer[i]
                let b : Int = answer[i+1]
                answer.append(a+b)
            }
            return answer
        }
    }
}



class Assignment {
    
    func fibonacci(n: Int) {
        
        var n1 = 0
        var n2 = 1
        
        if n == 0 {
            print("Invalid")
        } else if n == 1 {
            print(n1)
        } else if n == 2 {
            print(n1, n2)
        } else {
            var array = [n1, n2]
            for _ in 2..<n {
                let n3 = n1 + n2
                n1 = n2
                n2 = n3
                array.append(n3)
            }
            print(array)
        }
    }
}
