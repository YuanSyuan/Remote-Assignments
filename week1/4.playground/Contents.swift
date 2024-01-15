//Part 4: Control Flow

//1. Here is an array:
let lottoNumbers = [10, 9, 8, 7, 6, 5]
//Please use For-In loop and Range to print the last three members in the
//lottoNumbers array.
let lastThree = lottoNumbers[3...5]
for number in lastThree{
    print(number)
}
//2. Please use a for-in loop to print the results as the images listed below respectively
//(through lottoNumbers):
for lottoNumber in lottoNumbers.reversed(){
    print(lottoNumber)
}

for evenNumber in lottoNumbers{
    if evenNumber % 2 == 0{
        print(evenNumber)
    }
}

//3. Please use a while loop to solve the Q2.
var reverseLottoNumber = lottoNumbers.count - 1
while reverseLottoNumber >= 0 {
    print(lottoNumbers[reverseLottoNumber])
    reverseLottoNumber -= 1
}

var evenIndex = 0
while evenIndex < lottoNumbers.count {
    if lottoNumbers[evenIndex] % 2 == 0 {
        print(lottoNumbers[evenIndex])
    }
    evenIndex += 1
}
//4. Please use a repeat-while loop to solve Q2.
var reverseLottoIndex = lottoNumbers.count - 1
repeat {
    print(lottoNumbers[reverseLottoIndex])
    reverseLottoIndex -= 1
} while reverseLottoIndex >= 0


repeat {
    if evenIndex < lottoNumbers.count {
           print(lottoNumbers[evenIndex])
       }
    evenIndex += 2
} while evenIndex < lottoNumbers.count

//5. What are the differences between while and repeat-while?
//In repear-while loop, the text expression will be checked after the loop excuted once. However, in while loop, text expression comes before loop being excuted.

//6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
var isRaining: Bool = true
if isRaining == true {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director.
//Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
var jobLevel = 1

if jobLevel == 1 {
    print("Member")
} else if jobLevel == 2 {
    print("Team Leader")
} else if jobLevel == 3 {
    print("Manager")
} else if jobLevel == 4 {
    print("Director")
} else {
    print("We don't have this job")
}

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default :
    print("We don't have this job")
}
