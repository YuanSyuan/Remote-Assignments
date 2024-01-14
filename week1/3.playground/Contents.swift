//Part 3: Collection

//You should know how to declare an Array in Swift, and also how to add, remove, insert, read an object in an array. You should be familiar with the following syntax: append , insert , remove.
//Arrays are dangerous in Swift. If you access the array with an index which is out of range, your app will crash with fatal error. Please interact with the array very carefully.
//1. Please initialize an empty array with String data type and assign it to a variable named .myFriends .
var myFriends: [String] = []

//2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.
myFriends += ["Ian", "Bomi", "Kevin"]

//3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.
myFriends.append("Michael")

//4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.
myFriends[0...1] = ["Bomi", "Ian"]

//5. Use for...in to print all the friends in myFriends array.
for friend in myFriends{
    print(friend)
}
//6. Now I want to know who is at index 5 in the myFriends array, try to find the answer
//for me. Please explain how you get the answer and why the answer is it.
//myFriends[5]
//There's only 4 elements in the array, therefore there's no index 5.

//7. How to get the first element in an array?
myFriends.first

//8. How to get the last element in an array?
myFriends.last

//9. Please initialize a Dictionary with keys of type String, value of type Int, and assign it to a variable named .
var myCountryNumber: [String: Int] = [:]

//10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

//11. Change the value of ‘GB’ from 44 to 0.
myCountryNumber.updateValue(0, forKey: "GB")

//12. How to declare an empty dictionary?
//var myDictionary: [KeyType: ValueType] = [:]

//13. How to remove a key-value pair in a dictionary?
//Use the method: .removeValue(forKey: <#T##String#>)
