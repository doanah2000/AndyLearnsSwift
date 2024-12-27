import Cocoa

// Swift ranges numbers past quintillions
let score = 10

// Break up large numbers with _, Swift ignores them
let reallyBig = 100_000_000
let weirdOneMillion = 1_00_00_00

// Can create integers from arithmetic
let lowerScore = score - 1
let higherScore = score + 1
let doubleScore = score * 2
let halfScore = score / 2
let squareScore = score * score

// Swift has compound assignment operators
var counter = 10
counter += 5
print(counter)

// We can find out if an integer is a multiple off another integer
let number = 1200
print(number.isMultiple(of: 10))

// We can call this with a number directly
print(1200.isMultiple(of: 10))
