//Part 2: Enumerations and Optionals in Swift
//1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
//● Please declare an enum named Gasoline to model gasoline.
enum Gasoline {
    case gas92
    case gas95
    case gas98
    case diesel
    
    
////    //● Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
var price: Int {
        switch self {
        case .gas92:
            return 92
        case .gas95:
            return 95
        case .gas98:
            return 98
        case .diesel:
            return 85
        }
    }
}

//    func getPrice() -> Int {
//        switch self {
//        case .gas92:
//            return 92
//        case .gas95:
//            return 95
//        case .gas98:
//            return 98
//        case .diesel:
//            return 85
//        }
//    }
//}
//● Please establish raw values for . The data type of raw value should be String. For example, should be “92”.
//enum Gasoline: String {
//    case gas92 = "92"
//    case gas95 = "95"
//    case gas98 = "98"
//    case diesel = "diesel"
//}

//● Please explain what enum associated value is and how it works.
// Enum associated value allows each case in an enum to carry different information, and each of them can have different type of value.

//2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int. You should have learned how to deal with Optional.
//● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
class Pet {
var name: String
    init(name: String) {
        self.name = name
    }
}
class People {
    var pet: Pet?
}
//● Please create a People instance. Use guard let to unwrap the pet property and print its name.
let John = People()
John.pet = Pet(name: "doggy")

func hasPet() {
    guard let pet = John.pet else {
        print("John has no pet.")
        return
    }
    print("John's pet is \(pet.name)")
}

//● Please create another People instance. Use if let to unwrap the pet property and print its name.
//let John = People()
//John.pet = Pet(name: "doggy")
//
//func hasPet() {
//    if let pet = John.pet {
//        print("John's pet is \(pet.name)")
//    } else {
//        print("John has no pet.")
//    }
//}
