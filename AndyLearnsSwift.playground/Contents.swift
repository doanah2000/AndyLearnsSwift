import Cocoa

/// Using purely if-else if statements can get a bit messy. It can be repetitive and error prone due to lack of readability. To help in the condition of checking one variable, we can use switch statements.
/// This allows us to check individual conditions, and Swift can help us out. If one condition is checked twice, Swift will complain. If one condition is forgotten, Swift will not build.

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast: Weather = .sun

switch forecast {
case .sun:
    print("It's sunny!")
case .rain:
    print("It's raining!")
case .wind:
    print("It's windy!")
case .snow:
    print("It's snowing!")
default:
    print("Weather is broken!")
}

/// Note: Default block must be at the end, as Swift executes cases in order. If we want Swift to keep going after the first case, use fall through

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
