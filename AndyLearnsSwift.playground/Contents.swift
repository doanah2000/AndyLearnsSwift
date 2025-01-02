import Cocoa

/// Swift makes it easy to do work a fixed number of times or once over each item in an iterable

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms { // os is called the loop variable
    print("Hello, \(os)!") // This is the loop body
} // One cycle over this loop is called a loop iteration

/// We can also loop over a fixed range of numbers, inclusive of both lower and upper bounds
for i in 1...12 {
    print("5 x \(i) = \(5 * i)")
}

/// We can also nest loops
for i in 1...12 {
    print("The \(i) times table")
    for j in 1...12 {
        print("   \(j) x \(i) = \(i * j)")
    }
    print() // This creates an empty line
}

/// We can create a range that counts up to upper bound, but excludes the upper bound. This is useful when looping for things such as arrays
for i in 1..<12 {
    print("Counting 1 up to 12: \(i)")
}

/// If we don't care about the loop variable, we can use an underscore
var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
