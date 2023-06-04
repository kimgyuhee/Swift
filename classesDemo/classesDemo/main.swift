
print("hello")

let skeleton  = Enemy() // 해골
print(skeleton.health)
print(skeleton.health)

skeleton.move()
skeleton.attack()

// BluePrint 를 이용해 전체 뼈대 3개를 만듬
let skeleton2 = Enemy()
let skeleton3 = Enemy()


// SuperClass의 Enemy를 상속받은 SubClass의 Dragon
let dragon = Dragon()
dragon.move()
dragon.attack()
dragon.wingSpan = 5


dragon.attackStrength = 15
dragon.move()
dragon.attack()

dragon.talk(speech: "My teeth are swords! My claws are spear! My wings are a hurricane")
