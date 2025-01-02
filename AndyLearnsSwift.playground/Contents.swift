import Cocoa

/// Swift also uses while loops, give a condition and Swift will loop until condition is false. Though it exists, it is less useful and common than a for loop
var countdown = 10
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blastoff!")

/// Useful when we don't know how many times a loop will go around. Here is random int
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")
