import Foundation

var name: String = "Taha"

print("Hello, \(name)!")

var nickname: String? = nil

var city: String?
if let nickname = nickname {
    print("Hello, \(nickname)")
}
else {
    print("Your nickname is nil")
}

func login(user: String?) {
    guard let u = user else {
        print("User not found")
        return
    }
    print("Welcome \(u)")
}

login(user: "Taha")
login(user: nil)

struct Person {
    var name: String
    var pet: Pet?
}
struct Pet {
    var type: String
}

let person = Person(name: "Ahmet", pet: Pet(type: "Dog"))

let person2 = Person(name: "Mehmet", pet: nil)

print(person.pet?.type as Any)

print(person2.pet?.type as Any)


struct Address {
    var city: String
    var zipCode: String?
}

struct User {
    var name: String
    var email: String?
    var address: Address?
}

let user1 = User(name: "Taha", email: "taha@mail.com", address: Address(city: "İstanbul", zipCode: "34000"))
let user2 = User(name: "Veli" , email: "veli@mail.com", address: Address(city:"Ankara", zipCode: nil))
let user3 = User(name: "Ali", email: nil, address: nil)

print(user1.name)

//optional chaining

print(user1.address?.city ?? "Unknown")
print(user2.address?.city ?? "Unknown")
print(user3.address?.city ?? "Unknown")


//if let unwrap

if let email = user1.email {
    print("E-mail: \(email)")
} else {
    print("Unknown E-mail")
}

func showUserInfo(user: User) {
    guard let email = user.email else {
        print("\(user.name) için e-posta bulunamadı")
        return
    }
    print("Kullanıcı: \(user.name), e-posta: \(email)")
}
showUserInfo(user: user2)

// force unwrap

print(user1.email!)


var scores: [String: [Int]?] = [
    "Ali": [80, 90, 100],
    "Veli": nil
]

// Basit kontrol
if let aliScores = scores["Ali"] ?? nil {
    print("Ali’nin notları: \(aliScores)")
} else {
    print("Ali’nin notları bilinmiyor.")
}

if let veliScores = scores["Veli"] ?? nil {
    print("Veli’nin notları: \(veliScores)")
} else {
    print("Veli’nin notları bilinmiyor.")
}


// Fonksiyon 1
func printScores(of name: String, in dict: [String: [Int]?]) {
    guard let scores = dict[name] else {
        print("\(name) bulunamadı")
        return
    }
    print("\(name) notları: \(scores ?? [])")
}

printScores(of: "Ali", in: scores)
printScores(of: "Veli", in: scores)


// Fonksiyon 2
func printScores2(of name: String, in dict: [String: [Int]?]) {
    guard let scores = dict[name] else {
        print("\(name) için not bulunamadı")
        return
    }
    print("\(name) notları: \(scores ?? [])")
}

printScores2(of: "Ali", in: scores)


// Fonksiyon 3
func printScores3(of name: String, in dict: [String: [Int]?]) {
    guard let scores = dict[name], let values = scores, !values.isEmpty else {
        print("\(name) için not yok")
        return
    }
    print("\(name) notları: \(values)")
}

printScores3(of: "Ali", in: scores)
printScores3(of: "Veli", in: scores)
