protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("bird makes bird from shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
    
    func fly() {
        print("I am an eagle and I fu*king fly 🇺🇸🦅")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water")
    }
}

struct Airplane: CanFly {
    func fly() {
        print("Airplane uses its engine to lift off.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myPlane)
