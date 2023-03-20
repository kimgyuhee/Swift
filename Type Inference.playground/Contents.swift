var myAge = 12

print(myAge)

myAge = 13
print(myAge)

var myAgeNow : Int = 26
print(myAgeNow)

var myAgeNow1 : String = "26"
print(myAgeNow1)

var bottles : Int = 5
func getMilk(bottles : Int){
    var cost = bottles * 1000
    print("우유의 가격은 ? ", cost)
    print(cost)
    
}
getMilk(bottles : bottles)

func getMilk1(bottles : Int) -> Int {
    var cost = bottles * 1000
    return cost
}

print(getMilk1(bottles: 6))



