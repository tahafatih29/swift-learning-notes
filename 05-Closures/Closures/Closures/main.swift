import Foundation

func add1(_ a: Int, _ b: Int) -> Int {
    a + b
}

let add2: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    a + b
}

let result1 = add1(1, 2)
print("used func, result: \(result1)")

let result2 = add2(2, 2)
print("used closure, result: \(result2)")

var c = 15

func increment() {
    c += 1
}

increment()

func customAdd(_ a: Int, _ b: Int
    ,using operation: (Int, Int) -> Int
) -> Int {
    operation(a, b)
}
let result3 = customAdd(7621,4) { ($0 * $1) % 9 }
print(result3)

let ages = [20, 10, 40, 15, 26, 12, 36, 75, 39]
var count = 0
var sortedAgesAsc = ages.sorted{
    count += 1
    print("sorting call count and sorting order -> count: \(count): sorted: \($0) < \($1) = \($0 > $1)")
    return $0 > $1}

var sortedDesc = ages.sorted(by: <)

print(sortedAgesAsc)
print(sortedDesc)
print(count)

func customAdd2(
    using operation: (Int, Int) -> Int,
    _ a: Int,
    _ b: Int
) -> Int {
    operation(a, b)
}

let resultCustomAdd2 = customAdd2(
    using: { $0 + $1 }, 10, 20)
print(resultCustomAdd2)

let resultCustomAdd = customAdd(10,20, using: +)
print(resultCustomAdd)

func add10To (_ value: Int) -> Int {
    value + 10
}
func add20To (_ value: Int) -> Int {
    value + 20
}
func doAddition(on value: Int,
                using function: (Int) -> Int
) -> Int {
    function(value)
}
let resultAdd10To = doAddition(on: 100, using: add10To)
print(resultAdd10To)
let resultAdd20To = doAddition(on: 100, using: add20To(_:))
print(resultAdd20To)





