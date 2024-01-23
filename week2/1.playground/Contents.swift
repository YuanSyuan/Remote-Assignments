//Part 1: Object-Oriented Swift
//1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    func eat() {
        print("I eat everything!")
    }
    init(gender: Gender) {
        self.gender = gender
    }
}

//2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
class Elephant: Animal {
    override func eat() {
        print("I eat vegetables")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat animals!!!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass and hay")
    }
}

//3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.

class Zoo {
var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
    
}
let tiger = Tiger(gender: .male)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .male)
let zoo = Zoo(weeklyHot: tiger)

//let zoo = Zoo(weeklyHot: Tiger())
//zoo.weeklyHot = tiger
//zoo.weeklyHot = elephant
//zoo.weeklyHot = horse

//4. What is an instance? What does Initializer do in Class and Struct?
//Instance is an object created from a class. Initializer initialize the value for stored properties and other required setup.

//5. What’s the difference between Struct and Class ?
//a. Class can do inheritance, while Struct can not.
//b. The data type of Class is reference type, while Struct is value type.
//c. A Class is mutable, while a Struct is immutable.

//6. What’s the difference between reference type and value type ?
// For data in value type, a copy is created and the new data is stored independently; while in reference type, the instance is shared, and when new changes are made, data will be stored in same destination.

//7. What’s the difference between instance method and type method ?
//An instance method is an action an individual object can do, while a type method is an action the entire class can do.

//8. What does self mean in an instance method and a type method respectively?
//self in an instance method is a reference to the specific instance, and thus can access to that instance's properties and other instance methods. While, in a type method, self refers to the type itself, allowing access to type properties and other type methods.
