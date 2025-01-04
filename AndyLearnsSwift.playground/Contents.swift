import Cocoa

/// We can set parameter default values in the function definition. We can still specify end as a different number, but if we don''t then end will by default be 12.

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}

printTimesTables(for: 5)
