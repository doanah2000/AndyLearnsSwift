import Cocoa

/// Swifft structs let us create our own complex data types

struct Album {
	let title: String
	let artist: String
	let year: Int
	
	func printSummary() {
		print("\(title) (\(year)) by \(artist)")
	}
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)

print(red.title)

red.printSummary()

/// We cannot directly change values in the struct, even if they are variables because there is a chance that if the struct is created as a constant, so will its attributes. Any functions editting data must be marked as mutating
struct Employee {
	let name: String
	var vacationRemaining: Int
	
	mutating func takeVacation(days: Int) {
		if vacationRemaining > days {
			vacationRemaining -= days
			print("I'm going on vacation!")
			print("Days remaining: \(vacationRemaining)")
		} else {
			print("Oops!! There aren't enough days remaining.")
		}
	}
}

/// Swift now puts a restriction in place.
//let archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
////archer.takeVacation(days: 5) we cannot do this
//print(archer.vacationRemaining)

/// Structs have two properties:
/// 1. Stored property, where we place a value directly into the struct
/// 2. Computed property, where we recalculate the value of the property every time it's accessed

struct Employee1 {
	let name: String
	var vacationAllocated = 14
	var vacationTaken = 0
	
	var vacationRemaining: Int {
		get {
			vacationAllocated - vacationTaken
		}
		
		set {
			vacationAllocated = vacationTaken + newValue
		}
	}
}

var archer = Employee1(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)

/// Swift also has didSet and willSet keywords, which execute when a computed property is changed.

struct App {

	var contacts = [String]() {
		willSet {
			print("The old value is \(contacts)")
			print("The new value will be \(newValue)")
		}
		
		didSet {
			print("There are now \(contacts.count) contacts")
			print("The old value was \(oldValue)")
		}
	}
}

var app = App()
app.contacts.append("Jake")
