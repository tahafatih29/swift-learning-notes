import Foundation

var text = "Hello World"
print(text)
let text1 = "Hello World 1"
print(text1)

let isStudent: Bool = true
let YearOfBirth = 1997
let YearOfBirth2: Int = 1997
let yourAge: Int? = 26

if let yourAge = yourAge {
    print("Your age is \(yourAge)")
} else {
    print("Your age is not known")
}

let myName = "Taha"
let yourName = "Ali"
print("My name is \(myName) and your name is \(yourName)")

var names = [myName, yourName]
print(names)
names.append("Hassan")
print(names)
names.remove(at: 1)
print(names)
names.removeLast(1)

let foo = "foo"
var foo2 = foo
foo2 = "bar"
print(foo)
print(foo2)

let moreNames = [
    "Ahmet",
    "Mehmet",
    "Omer"
]
var moreNamesCopy = moreNames
moreNamesCopy.append("Mustafa")
print(moreNames)
print(moreNamesCopy)
moreNamesCopy.append("Ayşe")
var newNames = names + moreNames + moreNamesCopy
print(newNames)

let oldArray = NSMutableArray(array: ["Apple", "Banana", "Lemon"])
oldArray.add("Orange")
print(oldArray)
var newArray = oldArray
newArray.add("Pineapple")
print(newArray)
print(oldArray)

let colors = NSMutableArray(array: ["Red", "Blue", "Green"])
func changeTheColor(_ array: NSArray){
    let copy = array as! NSMutableArray
    copy.add("Yellow")
    copy.removeObject(at: 1)
}
for i in 1...5  {
    changeTheColor(colors)
    print(colors)
}


