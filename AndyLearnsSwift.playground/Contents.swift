import Cocoa

/// Swift gives us two ways to skip one or more items in a loop. Continue skips the remainder of the current iteration, while break exits the loop

/// Continue
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if !filename.hasSuffix("jpg") {
        continue
    }
    
    print("Found picture: \(filename)")
}

/// Break

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
