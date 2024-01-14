//Part 5: Function
    
//1. What are the return types in the following statements?
//    func birthday( ) -> String {
//    }
//// The return type will be String
//    func payment( ) -> Double { }
//
// The return type will be Double
    
//2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.
    func multiply (a: Int , b: Int = 10) {
        print(a * b)
    }
//3. What’s the difference between argument label and parameter name in a function?
//Each function parameter can have both an argument label and a parameter name. The argument label is used when you call the function, and the parameter name is used within the function’s implementation.

//For example
func chooseDessert(for name: String, dessert: String){
    //for name and dessert here are arguement labels(External Parameter Names, and they are used when a function is called. Usually an arguement label is named in a way sounds more like natural English language for better understanding.
    print(name + " would like to order a " + dessert)
    //name and dessert here are parameter names(Internal Parameter Names). hey are used within the implementation of the function. These are the names you use to refer to the values passed into the function.
}
chooseDessert(for: "Kelly", dessert: "chocolate")


//4. Please declare a function named greet with person as an argument label and name as a parameter name. This geet function will return a String. For example, you call the function greet like this:
//It will return the string: “Hello, Luke”.
func greet(person: String) -> String {
    return "Hello! " + person
}
print(greet(person: "Luke"))
