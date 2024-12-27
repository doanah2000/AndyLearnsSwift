import Cocoa

// Strings must start and end with double quotoes
let actor = "Denzel Washington"

// Strings can contain punctuation, emojis, and other characters
let fileName = "paris.jpg"
let result = "🐶"

// Strings can contain quotes with backslash
let quote = "Then he said, \"I'm sorry, I didn't mean to hurt you.\""

// Strings written across multiple lines must be denoted with triple quotes
let movie = """
We're
the
Millers
"""

// Read the length of the string with .count
print(actor.count)

// Assign to constants work as well
let length = actor.count
print(length)

// Can switch contents to uppercase with the uppercased() function
print(actor.uppercased())

// Can switch contents to lowercase with the lowercased() function
print(actor.lowercased())

// Can check if a string starts with a speciffic substring
print(actor.hasPrefix("Denzel"))

// Can check if a string ends with a specific substring
print(actor.hasSuffix("Washington"))

// These two are case sensitive
print(actor.hasPrefix("denzel"))
