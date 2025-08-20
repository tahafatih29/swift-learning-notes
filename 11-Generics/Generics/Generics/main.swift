import Foundation

func perform (
    _ op: (Int,Int) -> Int,
    on lhs: Int,
    add rhs: Int
) -> Int {
    op(lhs,rhs)
}

let result = perform(+, on: 10, add: 20)
print(result)
let result2 = perform(*, on: 10, add: 20)
print(result2)

func perform2<T>(
    _ op: (T,T) -> T,
    on lhs: T,
    add rhs: T
) -> T {
    op(lhs,rhs)
}
 
let result3 = perform2(+, on: "210", add: "2")
 
print(result3)

func perform3<T: Numeric>(
    _ op: (T,T) -> T,
    on lhs: T,
    add rhs: T
) -> T {
    op(lhs,rhs)
}

let result4 = perform2 (+, on: 10.5, add: 20.5)
print(result4)

protocol canJump {
    func jump() -> String
}
protocol canRun {
    func run() -> String
}

struct Person : canJump, canRun {
    func jump() -> String {
        return "jUMPING"
    }
    func run() -> String {
        return "RUNNING"
    }
}

let person = Person()
print("person 1")
print(person.jump())
print(person.run())

let person2: canJump & canRun = Person()
print("person 2")
print(person2.jump())
print(person2.run())

func JumpAndRun<T: canRun & canJump >(_ value: T) {
    let jump = value.jump()
    let run = value.run()
    print(jump, run)
}

let person5 = Person()
print("person5") 
JumpAndRun(person5)

let Names : [String] = ["Alice", "Bob", "Charlie"]

extension [String] {
     func longestString() -> String? {
         self.sorted { (lhs: String, rhs: String) -> Bool in  lhs.count > rhs.count  }.first
    }
}
print(Names.longestString() as Any)

protocol View {
    func addSubView(_ view: View)
}

extension View {
    func addSubView(_ view: View) {
       //  fatalError("init(coder:) has not been implemented")
    }
}

struct Button: View {
    

}
protocol PresentableAsView{
    associatedtype ViewType: View
    func produceView() -> ViewType
    func configure(superView: View,thisView: ViewType)
    func present(view: ViewType,on superView: View)
    
}
extension PresentableAsView{
    func configure(superView: View,thisView: ViewType) {
        
    }
    func present(view: ViewType,on superView: View) {
        superView.addSubView(view)
    }
}
struct MyButton: PresentableAsView{
    func produceView() -> Button {
        Button()
    }
    func configure(superView: any View, thisView: Button) {
        
    }
    
}
extension PresentableAsView where ViewType == Button {
    func doSomethingWithButton() -> String {
        let string = "This is a button"
        return string
    }
}

let button = MyButton()

print(button.doSomethingWithButton())

extension [Double]{
    func avarage() -> Double {
        return Double(self.reduce(0,+))/Double(self.count)
    }
}
let numbers: [Double] = [1.222,2.8,1.3,4.3,5555.33]

print(numbers.avarage())
