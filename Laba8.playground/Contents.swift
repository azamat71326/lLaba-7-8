class Spaceship {
    var name: String = ""
    var health: Int = 0
    var position: Int = 0
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Извините, ваш корабль был сбит слишком много раз. Хотите сыграть еще раз?")
        }
    }
}


let falcon = Spaceship()


falcon.name = "Falcon"

falcon.moveLeft()
print("Позиция корабля falcon после первого сдвига влево: \(falcon.position)")

falcon.moveLeft()
print("Позиция корабля falcon после второго сдвига влево: \(falcon.position)")

falcon.moveRight()
print("Позиция корабля falcon после сдвига вправо: \(falcon.position)")

falcon.wasHit()
print("Здоровье корабля falcon: \(falcon.health)")


