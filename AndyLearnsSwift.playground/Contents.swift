import Cocoa

/// Functions are chunks of code carved from the main program then given a name to be referred elsewhere

func showWelcome() {
    print("Welcome to my app!")
    print("By default, this prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome() // This is known as the function call, or callsite

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) * \(number) = \(i * number)")
    }
}

printTimesTables(number: 2)
