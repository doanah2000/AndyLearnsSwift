import Cocoa

/// Enums: set of named values we can create and use in code. We can define a whole new type with only specific values, whichh are safer and faster to work with the variable strings
enum Weekday {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
}

var day = Weekday.Monday
day = Weekday.Tuesday
day = Weekday.Wednesday
day = Weekday.Thursday
day = Weekday.Friday
// Weekday.January will yell at us
print(day)

/// Only need to write case once, can also skip the Enum. notation after the first call
enum Months {
    case January, February, March, April, May, June, July, August, September, October, November, December
}

var month = Months.January
month = .February
print(moonth)
