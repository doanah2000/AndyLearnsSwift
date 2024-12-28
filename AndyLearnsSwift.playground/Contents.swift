import Cocoa

// Boolean snuck in because we've seen them in function calls
let filename = "paris.jpg"
print(filename.hasSuffix("jpg"))

let number = 120
print(number.isMultiple(of: 5))

// Initialize boolean directly
let goodDogs = true
let gameOver = false
let isMultiple = 120.isMultiple(of: 5)

// Booleans do not have arithmetic operations, but do have not operator (!)
var isAuthenticated = false
isAuthenticated = !isAuthenticated // isAuthenticated now true
print(isAuthenticated)
isAuthenticated = !isAuthenticated // isAuthhenticated back to false
print(isAuthenticated)

// Booleans also have toggle function withh the same functionality as above example
var isAlive = true
isAlive.toggle()
print(isAlive) // No longer alive


