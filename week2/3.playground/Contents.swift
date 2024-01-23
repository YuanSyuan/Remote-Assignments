//Part 3: Protocol in Swift
//1. Declare a struct Person with a name property type String and a protocol name PoliceMan . There is only one method arrestCriminals with no argument in the protocol.
protocol PoliceMan {
    func arrestCriminals()
}

//struct Person {
//    var name: String
//}

//2. Make struct Person conform to PoliceMan protocol.
//struct Person: PoliceMan {
//    func arrestCriminals() {}
//    var name: String
//}

//3. Declare a protocol ToolMan with a method fixComputer that has no argument.
protocol ToolMan {
    func fixComputer()
}

//4. Add a property toolMan to the struct Person with data type ToolMan .
struct Person: PoliceMan {
    func arrestCriminals() {}
    var name: String
    var toolMan: ToolMan
}

//5. Declare a struct named Engineer that conforms to the ToolMan protocol.
struct Engineer: ToolMan {
    func fixComputer() {}
}

//6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.
var engineer = Engineer()
var steven = Person(name: "Steven", toolMan: engineer)
