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

/// Swift lets us create classes by basing them on existing classes (Inheritance). The new class gets the properties and methods from the superclass, and can add customizations and change functionalities for the new class behavior.
/// Both classes below are able to use the parent initializer and refer to the hours constant without explicitly redefining them in the class.
/// If a child class wants to change a superclass's method, we must use the `override` keyword in the child class's method definition
/// 1. If we attempt to change a method without using `override`, Swift will not build our code, stopping us from accidentally overriding a method
/// 2. If we use override on a method but the method doesn't override anything from the parent class, Swift will refuse to build, because there may be a mistake or typo.
/// If the overrided function has a diffferent return type from the parent, there is no override needed, as Swift can see the two same named functions are different based on return type (similar to operator overloading)
/// If we don't want our class to support inheritance, we can mark the class as `final`

class Employee {
	let hours: Int
	
	init(hours: Int) {
		self.hours = hours
	}
	
	func printSummary() {
		print("I work \(hours) hours a day..")
	}
}

final class Developer: Employee {
	func work() {
		print("I'm writing code for \(hours) hours.")
	}
	
	override func printSummary() {
		print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces.")
	}
}

final class Manager: Employee {
	func work() {
		print("I'm going to meetings for \(hours) hours.")
	}
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

/// Class initializers are a bit more complicated than struct initializers.
/// If a child has any custom initializers, it must always call the parent initializers after setting up its own properties. Swift will not automatically make us a member-wise initializer with classes.

class Vehicle {
	let isElectric: Bool
	
	init(isElectric: Bool) {
		self.isElectric = isElectric
	}
}

class Car: Vehicle {
	let isConvertible: Bool
	
	init(isElectric: Bool, isConvertible: Bool) {
		self.isConvertible = isConvertible
		super.init(isElectric: isElectric)
	}
}

let teslaX = Car(isElectric: true, isConvertible: false)
