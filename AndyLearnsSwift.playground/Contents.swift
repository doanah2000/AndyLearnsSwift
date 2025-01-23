import Cocoa

/// Checkpoint 7: Make a class hierarchy for animals - Animal, Dog, Cat, Corgi, Poodle, Persian, Lion
/// 1. Animal class should have a legs integer property that tracks how many legs an animal has.
/// 2. Dog class should have a speak method, but each of the subclasses should print something different
/// 3. Cat class should have a matching speak() method.
/// 4. Cat class should have isTame provided using an initializer

class Animal {
	var legs: Int
	
	init(legs: Int) {
		self.legs = legs
	}
	
	func speak() {
		print("I am an animal")
	}
}

class Dog: Animal {}

class Corgi: Dog {
	init() {
		super.init(legs: 4)
	}
	
	override func speak() {
		print("Yap")
	}
}

class Poodle: Dog {
	init() {
		super.init(legs: 4)
	}
	
	override func speak() {
		print("Arf")
	}
}

class Cat: Animal {
	let isTame: Bool
	init(legs: Int, isTame: Bool) {
		self.isTame = isTame
		super.init(legs: legs)
	}
}

class Persian: Cat {
	init() {
		super.init(legs: 4, isTame: true)
	}
	
	override func speak() {
		print("Purrrr")
	}
}

class Lion: Cat {
	init() {
		super.init(legs: 4, isTame: false)
	}
	
	override func speak() {
		print("Purrrrrrrr")
	}
}

let genericAnimal: Animal = Animal(legs: 6)
let dog: Dog = Dog(legs: 4)
let corgi: Corgi = Corgi()
let poodle: Poodle = Poodle()
let cat: Cat = Cat(legs: 4, isTame: true)
let persian: Persian = Persian()
let lion: Lion = Lion()

let animalArray: [Animal] = [genericAnimal, dog, corgi, poodle, cat, persian, lion]
for animal in animalArray {
	print("This is the \(type(of: animal))")
	animal.speak()
}

