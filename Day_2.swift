import SwiftUI
import UIKit

// Type Alias
typealias AudioSample = UInt16
var maxAmplitude = AudioSample.min

// Tuples
let http404Error: (Int, String) = (404, "Not Found")
let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print(http200Status.statusCode)
print(http200Status.description)

// Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

// Optioanl Binding

if let actualNumber = Int(possibleNumber) {
    print("The String \"\(possibleNumber)\" has an integer value of \(actualNumber).")
} else {
    print("The string \"\(possibleNumber) couldn't be converted to an integer.")
}

let myNumber = Int(possibleNumber)

if let myNumber = myNumber {
    print("My number is \(myNumber)")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100 ")
}

// Practice if let
let userAgeString1: String? = "15"
let userAgeString2: String? = "10"
let userAgeString3: String? = "abc"
let userAgeString4: String? = nil

func checkUserage(from ageString: String?) {
    if let ageStr = ageString, let age = Int(ageStr) {
        if age >= 13 {
            print("Welcome to the app")
        } else {
            print ("Sorry, you must be at least 13")
        }
    } else {
        print("Invalid age data received")
    }
}

checkUserage(from: userAgeString1)

// Practice 2 - if let

func validateEmail(email: String?) {
    if let emailAddress = email {
        if emailAddress.contains("@") {
            print("Valid Email: [\(emailAddress)]")
        } else {
            print("Invalid Email Format: [\(emailAddress)]")
        }
    } else {
        print("No email provided")
    }
}

validateEmail(email: "2027opark@dis.sc.kr")
validateEmail(email: nil)

// Final Practice - if let

func printFullName(firstName: String?, lastName: String?) {
    if let nameFirst = firstName, let nameLast = lastName {
        print("Full name: \(nameFirst) \(nameLast)")
    } else if let nameFirst = firstName {
        print(nameFirst)
    } else if let nameLast = lastName {
        print(nameLast)
    } else {
        print("No name provided.")
    }
}
printFullName(firstName: "Oliver", lastName: nil)

// Providing a Fallback Value
let name: String? = nil
let greeting = "Hello," + (name ?? "user") + "!"
print(greeting)

// Force Unwrapping
let number = convertedNumber!

guard let number = convertedNumber else {
    fatalError("The number was invalid")
}

let possibleString: String? = "An Optional String"
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

let optionalString = assumedString

if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}

// Error Handling

func canThrowAnError() throws {
}

do {
    try canThrowAnError()
} catch {
    
}
