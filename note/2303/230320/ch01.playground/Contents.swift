
print("Challenge")

func loveCalculator(){
    let loveScore = Int.random(in: 0...100)
    
    print(loveScore)
    
    if loveScore == 100 {
        print("You love each other like Kanye loves Kanye")
    } else {
        print("You'll be forever alone")
    }
}

loveCalculator()


func ChallengeScore(){
    let s = Int.random(in: 0...100)
    
    if s >= 80 {
        print("score : \(s) -> very well")
    }else if s > 40 && s < 80 {
        print("score : \(s) -> soso")
    }else{
        print("score : \(s) -> bad")
    }
}

ChallengeScore()
