func exercise() {
    
    var stockTicker: [String : String] = ["APPL" : "Apple Inc",
            "HOG" : "Harley-Davidson Inc"]
    
//    stockTicker.updateValue("BOOM":"Dynamic Materials")
    
    stockTicker["BOOM"] = "Banana Inc"
    stockTicker["GOOD"] = "Google Inc"

    stockTicker.updateValue("Hong Inc", forKey: "HOG")
    print(stockTicker)
}

exercise()

// Dict 형태
var responseMessage = [200: "OK", 403: "Access forbidden", 404: "File not found"]

var ineterestingNumbers = ["primes": [2,3,5,7,11,13,17], "triangular": [1,3,6,10,15,21]]


// Dict 생성
let dict1: [String: Int] = [:]
let dict2 = [String: Int]()
let dict3: Dictionary = [String: Int]()
let dict4: Dictionary<String, Int> = Dictionary<String, Int>()

print(ineterestingNumbers["primes"]!)

var inter1 = ineterestingNumbers["primes"]!
var inter2: () = inter1.append(19)
print(inter1.count)
print(inter2)
print(inter1)

for i in 0..<inter1.count {
    print(inter1[i])
}

// Dict 값 추가하기
ineterestingNumbers["random"] = [2,5,6,9]
print(ineterestingNumbers)
print(ineterestingNumbers)
ineterestingNumbers.updateValue([1,6,15,28], forKey: "hexagonal")

print(ineterestingNumbers)
print(ineterestingNumbers["a"]) //nil

ineterestingNumbers["a"] = [2,3,4]
print(ineterestingNumbers)
ineterestingNumbers.removeValue(forKey: "a")
print(ineterestingNumbers)

// 반복문
for (key, value) in ineterestingNumbers{
    print("key: \(key) and value: \(value)")
}


// Dict merge

var dict = ["a" : "apple", "b" : "banana"]
var mergeDict = ["b" : "brother", "s" : "sister"]

dict.merge(mergeDict) {(current, _) in current}
print(dict)

dict.merge(mergeDict) {(_, new) in new}
print(dict)

let newDict = dict.merging(mergeDict) {(_, new) in new}
print(newDict)
