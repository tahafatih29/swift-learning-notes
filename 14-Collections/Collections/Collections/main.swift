import Foundation


// Array

var array = [1, 2, 3]

var array2: [Int] = [1, 2, 3]

var array3: [Int] = []

var array4: [Int] = Array(repeating: 0, count: 10)

var fruits: [String] = ["orange", "apple", "banana", "blueberry"]

print(fruits[0])

fruits.append("grape")

print(fruits)

fruits.remove(at: 2)

print(fruits)

// Set

var set: Set<Int> = [1, 2, 3,4,5,6,7,8,9,10]

print(set)

print(type(of: set))

print(type(of: array))

var array6: Array<Int> = [1,2,3,4,5,6]

print(array6)

set.insert(7)

set.remove(5)

print(set)

let a: Set = ["a", "b", "c"]

let b: Set = ["d", "e", "f"]

var c: Set = a.union(b)

print(c)

c.remove("a")

print(c)

var set2: Set = [10,20,35,45,50,45]

var set3: Set = [45,50,60,70]

print(set2.subtracting(set3))

print(set2.symmetricDifference(set3))

// Dictionary, Unique keys - values

var usersAge: [String: Int] = ["Ahmet": 30, "Ayşe": 25, "Fatma": 22]

var users: [String: String] = ["Ahmet": "Ankara", "Ayşe": "Istanbul", "Fatma": "Ankara"]

print(usersAge["Ahmet"]!)

print(users["Ahmet"]!)

usersAge["Ahmet"] = 35

usersAge["Zeynep"] = 96

print(usersAge)

print(usersAge["Ahmet"]!)

users["Ahmet"] = "Antalya"

print(users["Ahmet"]!)

usersAge.removeValue(forKey: "Fatma")

print(usersAge)
