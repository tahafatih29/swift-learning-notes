import Foundation

class TestClass {
    var testString: String = "Hello, World!"
}

let testClass = TestClass()
print(testClass.testString)

class Person {
    var name: String
    private(set) var age: Int // var age: Int
    
    init(name: String, age: Int) {
    self.name = name
    self.age = age
}
    func sayHello() -> String {
        "Hello, my name is \(name)."
    }
    
    func getDescription() -> String {
        "I am \(age) years old."
    }
    
    func increaseAge() {
        age += 1
    }
}
func aboutPerson(_ person: Person) {
    print(person.sayHello())
    print(person.getDescription())
    person.increaseAge()
    print(person.getDescription())
}

var person1 = Person(name: "Alice", age: 25)
aboutPerson(person1)
// print(person1.age += 1) private(set) var age: Int -> immutable, var age: Int, mutable
var person2 = Person(name: "Bob", age: 30)
aboutPerson(person2)


class Vehicle {
    func turnOnEngine() -> String {
        "Vroom vroom!"
    }
}

class Car: Vehicle {
    override func turnOnEngine() -> String {
        "Beep boop!"
    }
}
let car = Car()
print(car.turnOnEngine())
let vehicle = Vehicle()
print(vehicle.turnOnEngine())


class Tesla {
    let manufacturer =  "Tesla"
    let model: String
    let year: Int
    init() {
        self.model = "Model S"
        self.year = 2024
    }
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    convenience init(model: String){
        self.init(
            model: model,
            year : 2024
        )
    }
}

class TeslaModelY: Tesla {
    override init() {
     super.init(model: "Model Y", year: 2024)
    }
}
let tesla = Tesla()
let modelY = TeslaModelY()

print(tesla.manufacturer)
print(tesla.model)
print("---------")
print(modelY.manufacturer)
print(modelY.model)

class myClass {
    var string: String
    init(){
        self.string = "initializer"
    }
    func doSomething() -> String {
        "Doing something"
    }
    deinit {
        string = "deinitializer"
    }
}

let myClosure = {
    let myClass = myClass()
    let doSomething = myClass.doSomething()
    print(doSomething)
}
myClosure()


