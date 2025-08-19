import Foundation

protocol Talk {
    func talk() -> String
}

struct Person: Talk {
    func talk() -> String {
        return "Person is talking!"
    }
}
let person1 = Person()
print(person1.talk())
protocol Swim {
    func swim() -> String
}

extension Swim {
    func swim() -> String {
        return "Swimmer is swimming!"
    }
}

struct Swimmer: Swim{
 //  func swim() -> String {
    //   return "done swimming!" // we can do this
    //}
}

let swimmer1 = Swimmer()

print(swimmer1.swim())

protocol HasName {
    var name: String { get }
    var age: Int { get set}
}
extension HasName {
    func describeMe() -> String {
        return "You are \(name) and \(age) years old."
    }
    mutating func increaseAge(){
        self.age += 1
    }
}

struct Student: HasName {
    let name: String // let --> only get
    var age: Int
}

var student1 = Student(name: "Merve", age: 18)
print(student1.name)
student1.age += 1
print(student1.age)

print(student1.describeMe())
student1.increaseAge()
print(student1.describeMe())
print(student1.age)

protocol Vehicle {
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}
extension Vehicle {
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}
struct Car: Vehicle {
    var speed: Int
    init(){
        self.speed = 0
    }
}
var car = Car()
print(car.speed)
car.increaseSpeed(by: 50)
print(car.speed)

func describe(obj: Any) -> String {
    if obj is Vehicle {
        return "\(obj) conforms to the Vehicle protocol"
    }
    else {
        return "\(obj) does not conform to the Vehicle protocol"
    }
}

print(describe(obj: car))

protocol Air{
    var name: String { get }
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}
extension Air {
        mutating func increaseSpeed(by value: Int){
        self.speed += value
    }
}
class Airplane: Air {
    var name : String
    var speed: Int
    init(name: String, speed: Int) {
        self.name = name
        self.speed = speed
    }
}
let plane = Airplane(name: "Boeing 737", speed:0)

print(describe(obj: plane))

func increaseSpeedIfVehicle(obj: Any){
    if var vehicle = obj as? Vehicle {
        vehicle.increaseSpeed(by: 100)
        print("Vehicle speed increased to: \(vehicle.speed)")
    }
    else {
        print("This was not a vehicle")
    }
}

func increaseSpeedIfAir(obj: Any){
    if var air = obj as? Air {
        air.increaseSpeed(by: 500)
        print("Airplane speed increased to: \(air.speed)")
    }
}

increaseSpeedIfVehicle(obj: car)
print(car.speed)  // speed : 50 not 150 because struct
increaseSpeedIfAir(obj: plane)
print(plane.speed) // speed : 500 because class 

