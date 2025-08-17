import Foundation


enum Animals {
    case cat
    case bird
    case rabbit
    case dog
    case turtle
}

let rabbit = Animals.rabbit
print(rabbit)

let cat: Animals = .cat
print(cat)

let dog: Animals = .dog
print(dog)
let turtle: Animals = .turtle

func describeAnimal(_ animal: Animals){
    switch animal {
    case .cat:
        print("Meow")
        break
    case .dog:
        print("Woof")
        break
    case .bird:
        print("Tweet")
        break
    case .rabbit:
        print("Hoppy")
        break
    default :
        print("This is someting else!")
        break
    }
}
describeAnimal(Animals.rabbit)



enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let apple = Shortcut.wwwUrl(path: URL(string: "https://www.apple.com")!)

switch apple {
    
case let .fileOrFolder(path, name):
    print("\(path), \(name)")
    break
case let .wwwUrl(path):
    print(path)
case let .song(artist, songName):
    print("\(artist), \(songName)")
    break
}

if case let .wwwUrl(path) = apple {
    print(path)
}

let istakoz: Shortcut = .song(artist: "Sagopa Kajmer", songName: "Istakoz")

if case let .song(artist, songName) = istakoz {
    print(artist)
    print(songName)
}

enum Vehicle {
    case car (manufacturer: String, model: String)
    case motocycle (manufacturer: String, yearMade: Int)
    var manuFacturer: String {
        switch self {
        case let .car(manufacturer, _),
            let .motocycle(manufacturer, _):
            return manufacturer
        }
    }
}


let car: Vehicle = .car(manufacturer: "Toyota", model: "Corolla")

let motocycle: Vehicle = .motocycle(manufacturer: "Honda", yearMade: 2019)

var carManufacturer: String = car.manuFacturer
var motocycleManufacturer: String = motocycle.manuFacturer

print(carManufacturer)
print(motocycleManufacturer)


enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

print(FamilyMember.father.rawValue)


enum FavoriteEmoji: String, CaseIterable {
    case smile = "😀"
    case rocket = "🚀"
    case sun = "☀️"
    case snow = "❄️"
}

var allEmojis = FavoriteEmoji.allCases.map(\.rawValue)

print(allEmojis)

if let smile = FavoriteEmoji(rawValue: "😀") {
    print("Found the smile emoji")
    print(smile.rawValue)
}
else {
    print("This emoji doesn't exist")
}

if let blush = FavoriteEmoji(rawValue: "😘") {
    print("Found the blush emoji")
    print(blush)
}
else {
    print("This emoji not exist")
}

enum Height {
    case short, medium, tall
    mutating func makeShort() {
        self = Height.short
    }
}

var myHeight: Height = .tall
myHeight.makeShort()
print(myHeight)

indirect enum IntOperation {
    case add(Int,Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    func calculateResult(of operation: IntOperation? = nil) -> Int{
        switch operation ?? self{
            case let.add(a,b):
            return a + b
        case let .subtract(a,b):
            return a - b
            case let .freehand(operation):
            return  operation.calculateResult(of: operation)
        }
    }
}

let freehand = IntOperation.freehand(.add(20,80))
print(freehand.calculateResult())
