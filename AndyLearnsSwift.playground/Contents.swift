import Cocoa

/// Checkpoint 6: Motorcycle information
/// Create a Struct to store information for a Motorcycle:
/// - model
/// - seats
/// - current gear
/// Add a method to change gears up and down
enum GearError: Error {
	case GearTooHigh, GearTooLow, InvalidShift
}

enum ShiftDirection {
	case up, down
}

struct Motorcycle {
	private let model: String
	private let passenger: Bool
	private let gears: [String] = ["N", "1", "2", "3", "4", "5", "6"]
	private var currentGearIndex: Int = 0
	
	init(model: String, passenger: Bool) {
		self.model = model
		self.passenger = passenger
	}
	
	func currentGear() -> String {
		gears[currentGearIndex]
	}
	
	mutating func shiftGears(_ direction: ShiftDirection) throws {
		switch direction {
			case ShiftDirection.up:
				if currentGearIndex < 6 {
					print("Shifting gears to gear: \(gears[currentGearIndex+1])")
					currentGearIndex += 1
				} else {
					throw GearError.GearTooHigh
				}
			case ShiftDirection.down:
				if currentGearIndex > 0 {
					print("Shifting gears to gear: \(gears[currentGearIndex-1])")
					currentGearIndex -= 1
				} else {
					throw GearError.GearTooLow
				}
			
		}

	}
}

var bella = Motorcycle(model: "Eliminator", passenger: false)
print(bella.currentGear())
do {
	try bella.shiftGears(.up)
	try bella.shiftGears(.up)
	try bella.shiftGears(.up)
	try bella.shiftGears(.up)
	try bella.shiftGears(.up)
	try bella.shiftGears(.up)
	try bella.shiftGears(.down)
	try bella.shiftGears(.down)
	try bella.shiftGears(.down)
	try bella.shiftGears(.down)
	try bella.shiftGears(.down)
	try bella.shiftGears(.down)
	try bella.shiftGears(.down)
} catch GearError.GearTooHigh {
	print("Can't shift any higher. Staying in Gear 6")
} catch GearError.GearTooLow {
	print("Can't shift lower. Staying in Gear N")
}
