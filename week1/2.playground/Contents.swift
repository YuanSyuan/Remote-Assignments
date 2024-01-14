//Part 2: Basic
//1. Please explain the difference between let and var .
//  let and var are both references. However the value assigned to let can't be changed afterwards.

//2. We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
  let pi: Double = 3.14
//  I use let here instead of var because pi is a fixed value that won't change in any cases.

//3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.
  var x: Int = 100
  var y: Int = 30
  let average = (x+y)/2

//4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
//● Please solve this problem so that we can put the average in the record system.
//● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
  var xDouble: Double = 100.0
  var yDouble: Double = 30.0
  let averageDouble = (xDouble+yDouble)/2

//(10 / 3) are Integers. Therefore, when dividing two integers, the result is also an integer. The fractional part of the result is discarded, and the result will be 3 in this case.
//(10.0 / 3.0) are floating-point division. When dividing two Double values, the result includes the fractional part. Therefore, the result of this case will be3.333333333333334.


//5. Declare two constants that values are 10 and 3 each, then please calculate the
//remainder and save the result in a constant named remainder .
  let a = 10
  let b = 3
  let remainder = 10%3
    
//6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
    var flag: Bool = true
    var inputString: String = "Hello world."
    let bitsInBite: Int = 8
    let averageScore: Double = 86.8

//7. What is Type Inference in Swift?
//The compiler gets to tell the type of a variable based on the value assigned to it.

//8. What is the issue about this piece of code?
var phoneNumber = 0987654321
//phoneNumber = "Hello world"
//The code here tried to change the value of phoneNumber to "Hello world", however, phoneNumber is an Int and thus cannot be assigned a String as its new value.

//9.Compoud Assignment operators are very useful when programming. Please declare a variable salary with initial value 22000, and use unary plus operator
//adding 28000 to salary, so it will be 50000 after this process.
var salary = 22000
salary += salary + 28000

//10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant.
//Now please write down the Equality operator in Swift.
//Equality operator: ==, ===
