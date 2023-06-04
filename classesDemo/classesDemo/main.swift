
print("hello")

let skeleton  = Enemy(health: 100, attackStrength: 10) // 해골
print(skeleton.health)
print(skeleton.health)

skeleton.move()
skeleton.attack()

// BluePrint 를 이용해 전체 뼈대 3개를 만듬
let skeleton2 = skeleton
skeleton2.takeDamage(amount: 10)
print(skeleton2.health)
print(skeleton.health)
// 클래스는 참조에 따라 전달되니깐 둘다 값이 변경된 것이다.
// 하나만 변경되게 하려면 초기화를 다시 시켜줘야한다.
// let skeleton2  = Enemy(health: 100, attackStrength: 10) // 해골
let skeleton3 = Enemy(health: 200, attackStrength: 10) // 해골


// SuperClass의 Enemy를 상속받은 SubClass의 Dragon
/**
let dragon = Dragon()
dragon.move()
dragon.attack()
dragon.wingSpan = 5


dragon.attackStrength = 15
dragon.move()
dragon.attack()

dragon.talk(speech: "My teeth are swords! My claws are spear! My wings are a hurricane")
**/
