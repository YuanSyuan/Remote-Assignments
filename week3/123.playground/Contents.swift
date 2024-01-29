//1. What is a closure ? How to execute a closure?
//a closure is like an anonymous function. It can be assigned with a variable or a constant, or can be sent into a function as a parameter.
//To execute a closure, you'll have to declare a closure with parameters and return type if needed. And then call it with parentheses.

//2. Please declare a closure whose input type is Int, output type is Bool. The functionality of
//this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
let verify = {(inputNumber: Int) -> Bool in
    return inputNumber % 2 != 0
}

print(verify(1))

//3. Please complete the following function that prints a triangle made of asterisks.
var star = "*"
func printTriangle(layers: Int) {
    // TODO: print a triangle
    for layer in 1...layers {
        print(star)
        star += "*"
    }
}
printTriangle(layers: 5)


