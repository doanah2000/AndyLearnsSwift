import Cocoa

/// Functions offten pass data back

let root = sqrt(169) // 13 is now stored in root
print(root)

/// If we want to return our own value from a function, we'll need `-> type` before the open brace, and have the return keyword in the function body

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

/// Do two strings contain the same letters, regardless of order?
/// Function should:
///     Accept two string parameters
///     Return true if their letters are the same

/// When our function only has one line, we can remove the return keyword entirely.
func containsSameLetters(firstString: String, secondString: String) -> Bool {
    firstString.sorted() == secondString.sorted()
}

print(containsSameLetters(firstString: "Hello", secondString: "World"))

/// If our func has no return value, we can use return by itself, forcing a function to exit immediately
func printStuff() {
    return
}
