import Cocoa

/// Swift has a ffew tricks to minimize syntax in closures
 let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let sorted = team.sorted(by: { (a: String, b: String) -> Bool in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
})

/// Calling sorted with any function passed in will work with one rule
/// 1. The function must accept two strings as parameters and return a Bool if the first string should come before the second string.
/// If the function returned nothing, or only had 1 string, the code would not build.

print(sorted)

/// We don't have to specify the types of our closuren nor the return type
let sortedShorter = team.sorted(by: { (a, b) in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
})

/// We also have a special syntax type called trailing closure syntax: remove the `by`` keyword and parentheses
let sortedevenShorter = team.sorted{ (a, b) in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
}

/// Swift can automatically provide parameter names in short-hand syntax
let sortedEvenEvenShorter = team.sorted{
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    return $0 < $1
}
/// This syntax is less clear because each variable is being used more than once. But if the call was simpler:
let reverseTeam = team.sorted { $0 > $1 }

/// Three general rules to help guide when to not use short-hand syntax:
/// 1. if closure body long
/// 2. if variables are used multiple times
/// 3. if 3 or more parameters
