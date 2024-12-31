import Cocoa

/// If Statements in Swifft are virtually the same as other languages. Note comparisons can only occur for matching data types. Combine conditions with && and ||
var someCondition: Bool = true

if someCondition {
  print("Do something")
}


/// If - else if - else
let score = 85
if score >= 90 {
    print("You got an A")
} else if score >= 80 {
    print("You got an B")
} else {
    print("You did not get an A nor B")
}
