import Cocoa

/// Swift uses structs for nearly all built-in types of data. We have a second way using classes.
/// Similarities:
/// 	1. We can create and name classes and structs
/// 	2. We can add properties, methods, property observers, and access control
/// 	3. We can create custom initializers to configure new instances
///
/// Diffffernces:
///  	1. You can make one class build upon functionality in another class (inheritance)
///  	2. Swift won't generate a memberwise initializer for classes
///  	3. If you copy an instance of a class, both copies share the same data
///  	4. We can add a deinitializzer to run when the final copy is destroyed
///  	5. Constant class instances can have their variable properties changed
///
/// In UIKit, it's very common to have very long inheritance hierarchies, but this is much less common in SwiftUI apps.
///
/// Lets create a class. This can also be defined as a struct, but the difference is within the 5 outlined.

class Game {
	var score = 0 {
		didSet {
			print("Score is now \(score)")
		}
	}
}

var newGame = Game()
newGame.score += 10

