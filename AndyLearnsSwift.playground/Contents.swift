import Cocoa

/// We can also assign functions to variables and pass them into other functions

func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser
var greetCopyVerbose: () -> Void = greetUser
greetCopy()

/// We can skip creating a separate function and assign functionality directly to a constant or variable
let sayHello = {
    print("Hello!")
}

sayHello()

let sayGoodbye = { (name: String) -> String in
    "Goodbye, \(name)"
}

sayGoodbye("Taylor")

/// Names of the data passed into the function are not part of its type
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989) // Notice we don't call with `for`
print(user)


