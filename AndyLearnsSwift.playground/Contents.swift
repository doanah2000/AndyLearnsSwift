import Cocoa

/// Swifft by default uses type inference when type is not explicitly annotated
let surname = "Swift"
var score = 0

/// Type annotation lets us to be specific about the data and if we initiate a constant or variable with empty data
let surnameAnnotated: String = "Swift"
var scoreAnnotated: Double = 0 // Without Double, Swift would infer this as an int

/// We have more examples of type annotation
var intEx: Int = 0
var doubleEx: Double = 0
var stringEx: String = ""
var boolEx: Bool = false
var arrayEx: [Int] = []
var dictionaryEx: [String: Int] = [:]
var setEx: Set<Int> = []

/// Type annotations are not always needed when non-empty data is being defined

/// Enums can be a little different annotation-wise as we are essentially creating new types. The values of enums have the same type annotation as the enum itself

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light
style = .system

/// Constants can be declared explicitly before the value is defined with type annotations
let username: String
username = "Swift"
print(username)

/// Can constants be declared without the type annotation? No it cannot, Swift will complain that the type annotation is missing.
//let gameScore
//gameScore = 0
//print(gameScore)
