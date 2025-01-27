import Cocoa

/// Protocols are like contracts for our Swift code.
/// They let us define what kind of functionality we expect our types to support and Swift will ensure those types add the required functionality

/// To create a protocol:
/// 1. Use `protocol` keyword followed by protocol name in camel case.
/// 2. Inside protocol, listall methods we require in order for the protocol to function as we expect
/// 3. Methods are simply declared, not defined
protocol Vehicle {
	func estimateTime(for distance: Int) -> Int
	func travel(distance: Int)
}

struct Car: Vehicle {
	func estimateTime(for distance: Int) -> Int {
		distance / 50
	}
	
	func travel(distance: Int) {
		print("I'm driving \(distance)km")
	}
	
	func openSunroof() {
		print("It's a nice day!")
	}
}

struct Bicycle: Vehicle {
	func estimateTime(for distance: Int) -> Int {
		distance/10
	}
	
	func travel(distance: Int) {
		print("I'm riding \(distance)km")
	}
}
