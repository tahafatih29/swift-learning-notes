import Foundation

struct Test {
        var name = "Taha"
    var age: Int = 20
    
    mutating func changeName() {
        self.name = "Ali"
    }
    
    mutating func incrementAge() {
        age += 1
    }
    }

var user = Test(name: "fatih", age: 23)
print(user.age)
print(user.name)
var changedUser = user
changedUser.changeName()
print(changedUser.name)
changedUser.incrementAge()
print(changedUser.age)

struct Person {
    let name: String
    let age:Int
}
let foo = Person(name: "Taha",age: 25)

print("name: \(foo.name) and age: \(foo.age)")

var comps = DateComponents()
comps.year = 2025
comps.month = 7
comps.day = 10
let customDate = Calendar.current.date(from: comps)!
let formatter = DateFormatter()
formatter.dateFormat = "yyyy"

var carComponents = DateComponents()
carComponents.year = 2020
carComponents.month = 12
carComponents.day = 25
let carDate = Calendar.current.date(from: carComponents)!

struct MyComputer {
    var name: String
    var ram: Int
    var cpu: String
    var money: Int
    var storage: Int
    var date = Date()
    init(name: String, ram: Int, cpu: String, money: Int, storage: Int) {
        self.name = name
        self.cpu = cpu
        self.ram = ram
        self.money = money
        self.storage = storage
        self.date = customDate
    }
}
let pc1 = MyComputer(name: "Taha MacBook", ram: 16, cpu: "M4", money: 1000, storage: 256, )

print("Welcome \(foo.name), your pc name is: \(pc1.name), and properties -> \(pc1.ram) GB RAM, \(pc1.cpu) CPU, \(pc1.storage) GB SSD and price is: $\(pc1.money) date: \(formatter.string(from: pc1.date))")


struct Car {
    let name: String
    var year = Date()
    init(name: String){
        self.name = name
        self.year = carDate
    }
}
let audi = Car(name: "Audi")
print(audi.name)
print(audi.year)

print("Car name is: \(audi.name), and year is: \(formatter.string(from: audi.year))")

struct Person2 {
    let firstName : String
    let lastName : String
    let fullName : String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = "\(firstName) \(lastName)"
    }
}
var person2 = Person2(firstName: "Taha", lastName: "Kaya")

let person2FullName = person2.fullName
print(person2FullName)

struct Person3 {
    let firstName : String
    let lastName : String
    var fullName : String {
        "\(firstName) \(lastName)"
    }
}

var person3 = Person3(firstName: "Kaya", lastName: "Taha")
let person3FullName = person3.fullName
print(person3FullName)

struct Motocycle {
    var speed : Int
    mutating func increaseSpeed() {
        speed += 20
    }
    mutating func decreaseSpeed() {
        speed -= 20
    }
    mutating func stop() {
        speed = 0
    }
    mutating func setSpeed(currentSpeed: Int){
        speed = currentSpeed
    }
}

var moto = Motocycle(speed: 100)
moto.increaseSpeed()
print(moto.speed)

moto.decreaseSpeed()
print(moto.speed)

moto.setSpeed(currentSpeed: 70)
print(moto.speed)

moto.stop()
print(moto.speed)

moto.setSpeed(currentSpeed: 50)
print(moto.speed)

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) ->Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
}
let bike1 = Bike(manufacturer: "Honda", currentSpeed: 15)

let bike2 = bike1.copy(currentSpeed: 25)

print("bike 1 current speed: \(bike1.currentSpeed) and bike 2 current speed: \(bike2.currentSpeed)")
