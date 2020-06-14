//: ## Strings
//: You've seen strings passed in to print statements
print("Hello, world!")

//: You've seen strings defined as variables and as constants
var myFavoriteAnimal = "nudibranch"
var encouragement = "You can do it!"
//: [Next](@next)

var sentence = String("This is my sentence")
print("now here is \(sentence)")

encouragement = "something else"
if encouragement.contains("else") {
    print("found it")
}

import Foundation



func checkLength(message: String) -> Bool {
    if (message.count >= 10 && message.count <= 10000) {
        return true
    } else {return false}
}
var message = "halibut"
let number = 15

print(" is length OK? \(checkLength(message: message))")
if (number > 10 && number < 10000) {
    print("true")
} else {print("falese")}

func search(s1: String, s2: String) -> Bool {
    let firstString = s1.lowercased()
    let secondString = s2.lowercased()
    if (firstString.contains(secondString)) {
        print ("found it")
        return true
    } else {
        print("can't find it")
        return false
    }
}

let myBigString = "Udacity"
let myLittleString = "CITY"

print(search(s1: myBigString, s2: myLittleString))

func isPalindrome(input: String) -> Bool {
    let reverse = String(input.reversed())
    if (input == reverse) {
        print("found palindrome <\(input)>")
        return true
    } else {
        print("not a palindrome <\(input)>")
        return false
    }
}

let palindrome = "mom"
let notPalindrome = "big"

print(isPalindrome(input: palindrome))
print(isPalindrome(input: notPalindrome))

func remove(input: String, first: Int, last: Int) -> String {
    // we require a variable to manipulate strings
    var newString = input
    // modify newString and return the result
    let count = input.count
    if (count < first || count < last) {
        newString = ""
        return newString
    }
    if (first != 0) {
        for index in 1...first {
            newString.removeFirst()
            print("\(index) shrinking from front - \(newString)")
        }
    }
    if (last != 0) {
        for index in 1...last {
            newString.removeLast()
            print("\(index) shrinking from back - \(newString)")
        }
    }
    return newString
}

var finalString = remove(input: "frontmiddleback", first: 5, last: 4)
print("output \(finalString)")

finalString = remove(input: "two", first: 6, last: 0)
print("output \(finalString)")

finalString = remove(input: "three", first: 3, last: 0)
print("output \(finalString)")

