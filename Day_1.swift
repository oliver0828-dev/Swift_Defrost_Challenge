import SwiftUI

// Declaring Constants and Variables
let maximumNumberOfLoginAttempts: Int
var currentLoginAttempt = 0

var environment = "development"

if environment == "development" {
    maximumNumberOfLoginAttempts = 100
} else {
    maximumNumberOfLoginAttempts = 10
}

var x = 0.0, y = 0.0, z = 0.0

// Type Annotations
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

// Naming Constants and Variables
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++" -> Won't work

// Printing Constants and Variables
print(friendlyWelcome)
print("The current value of friendlyWelcome is \(friendlyWelcome)")

// This is a comment

/* This is also a comment
 but is written over multiple lines*/

// Semicolons
let cat = "cat"; print(cat)
