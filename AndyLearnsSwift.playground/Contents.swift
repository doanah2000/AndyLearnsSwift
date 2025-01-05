import Cocoa

/// Checkpoint 4: Write a function that accepts an integer from 1 through 10,000 and returns the integer square root of that number
/// 1. You can't use the built-in sqrt() function or similar - you need to ffind the square root yourselff
/// 2. If the number is less than 1 or greater than 10,000, you should throw an "out of bounds" error
/// 3. You should only consider integer square roots - don't worry about a square root of 3 being 1.732, for example.
/// 4. If you can't find the square root, throw a "no root" error

enum squareRootError: Error {
    case outOfBounds, noRoot
}

func findSquareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw squareRootError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        } else if i * i > number {
            throw squareRootError.noRoot
        }
    }
    return number // dummy return, since the potential square root is thrown once an integer squared is greater than the given number
}

do {
    try print(findSquareRoot(100))
} catch {
    print("Error: \(error)")
}
