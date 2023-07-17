var aYear = 1

func isLeap(_ aYear : Int) {
    
    if (aYear%4 == 0){
        if(aYear%100 == 0){
            if(aYear%400 == 0 ){
                print("YES")
            }else{
                print("NO")
            }
        }else{
            print("YES")
        }
    }else {
        print("NO")
    }
}

isLeap(aYear)

for i in 0...1000 {
    print("\(i)년도는 윤년입니까?", terminator: "")
    isLeap(i)
    print()
}

isLeap(1997)
isLeap(1996)
isLeap(1900)
isLeap(2000)
