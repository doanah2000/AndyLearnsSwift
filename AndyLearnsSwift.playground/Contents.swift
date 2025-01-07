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
let archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5) we cannot do this
print(archer.vacationRemaining)
