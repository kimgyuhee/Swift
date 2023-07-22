
class Bird {
    
    var isFemale = true
    var type : String = "birds"
    func layEgg() {
        if isFemale {
            print("The birds makes a new bird in a shell.")
        }
    }
    
    func fly () {
        print("The birds flaps its wings and lifts off into the sky")
    }
}


// Bird 상속받은 Eagle
class Eagle : Bird {
    func soar () {
        print("The eagle glids in the air using air currents")
    }
}

class Penguin : Bird {
    func swim () {
        print("The penguin paddles through the water.")
    }
}


let myEagle = Eagle()
myEagle.layEgg()
myEagle.fly()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.fly()
myPenguin.swim()
