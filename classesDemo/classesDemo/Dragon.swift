
/**
 Enemy의 속성와 메소드를 모두 상속 받아 SubClass인 Dragon은 재정의할 필요가 없다.
 속성과 메소드 모두 물려받았다.
 **/
class Dragon : Enemy {
    var wingSpan = 2
    
    func talk(speech : String) {
        print("Says : \(speech) ")
    }
    
    // 우리가 상속하는 클래스를 재정의 할 수 있다.
    override func move() {
        print("Fly forwards")
    }
    
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage ")
    }
}
