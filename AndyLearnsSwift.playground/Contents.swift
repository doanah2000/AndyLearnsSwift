import Cocoa

// Swift considers floating point numbers as doubles. Thhere is a bit of inaccuracy in doubles
let number = 0.1 + 0.2
print(number)

// Cannot mix ints and doubles. Must explicitly treat either the int as a double or double as an int
let a = 1
let b = 2.0
let c = a + Int(b)

let d = 1
let e = 2.0
let f = Double(d) + e

let double1 = 3.1
let double2 = 3131.3131
let doublle3 = 3.0
let int1 = 3

// Once Swift decides on the data type of a constant or variable, it must be the same as long as it exists
var name = "Nicolas Cage"
name = "John travolta"
//name = 57 - cannot do this

// Doubles have the same compound assignment functionality, putting numbers here imply they are doubles
var rating = 5.0
rating *= 2
rating /= 3
rating += 4
rating -= 5

// Swift lets us use doubles and CGFloats interchangeably

