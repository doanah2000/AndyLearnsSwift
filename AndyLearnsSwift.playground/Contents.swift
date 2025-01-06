import Cocoa

/// Writing functions that accept functions as parameters is particularly important closures thanks to trailing closure syntax

func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy: () -> Void = greetUser
greetCopy()

/// We write a function that generates an array of integers by calling another passed in function.
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
	var numbers = [Int]()
	for _ in 0..<size {
		numbers.append(generator())
	}
	return numbers
}
/// Ex 1
let rolls = makeArray(size: 50) {
	Int.random(in: 1...20)
}
print(rolls)

/// Ex 2
func generateNumber() -> Int {
	Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

/// Do we need to declare the function in the parameter instead of just calling another function directly

func doSomething() {
	print("Doing Something")
}

func doMoreStuff() {
	doSomething()
	print("Did something")
}

doMoreStuff()

/// We can but this looks cleaner and groups reusability if we wanna do trailing closures
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
	print("About to start first work")
	first()
	print("About to start second work")
	second()
	print("About to start third work")
	third()
}

doImportantWork {
	print("This is the first work")
} second: {
	print("This is the second work")
} third: {
	print("This is the third work")
}
