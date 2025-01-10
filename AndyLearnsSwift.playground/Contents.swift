import Cocoa

struct BankAccount {
	var funds = 0
	
	mutating func deposit(amount: Int) {
		funds += amount
	}
	
	mutating func withdraw(amount: Int) -> Bool {
		if funds >= amount {
			funds -= amount
			return true
		} else {
			return false
		}
	}
}

/// The `fund` attribute is public to the world to mess around with. Similar to Java, Swift also has the private keyword to limit access to the methods
/// within the struct

struct Kid {
	private var age = 14
	func getAge() -> Int {
		age
	}
}

var newKid = Kid()
//print(newKid.age) inaccessible due to private protection level
print(newKid.getAge())

/// Use private for "Don't let anything outside this struct to use this"
/// Use fileprivate for "Don't let anything outside the current file use this"
/// Use public for "Anyone can use this"
/// Use private(set) to "let anyone read the property, but only let my methods write it"


/// Sometimes we want to add a property or method to the struct itself, and not an instance of it. We can use the `static` keyword here
struct School {
	static let studentCount = 0

	static func add(student: String) {
		print("\(student) joined the school.")
		studentCount += 1
	}
}

