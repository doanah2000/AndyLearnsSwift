import Cocoa

// Swift lets us join strings using "+" and string interpolation

let hello = "Hello, "
let world = "World!"
let message = hello + world
print(message)

// Can join string literals in a similar manner
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

// + Being used to concat strings vs adding integers at the same time is called operator overloading, works
// well ffor small things, but we wouldn't want to overload the usage (haha)
// If we have a lot of things to join together, it becomes wasteful.. Swift cannot do all operations at
// the same time, so the code below does 9 operations serially.

let luggageCode = "1" + "2" + "3" + "4" + "5" + "6" + "7" + "8" + "9" + "0"

// String interpolation let's us sufficiently create strings from other strings and integers, doubles, etc.

let name = "Taylor"
let age = 29
let greeting = "Hello, my name is \(name), and I am \(age) years old!"
print(greeting)
