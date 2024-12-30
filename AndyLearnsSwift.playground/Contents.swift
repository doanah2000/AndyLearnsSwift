import Cocoa

/// Checkpoint 2: Array Processing
/// - Create an array of Strings
/// - Print the number of items in the array
/// - Print the number of unique items in the array

let brands: [String] = ["agv", "shoei", "scorpion", "revit", "agv", "nbt", "shoei"]
print("The number of brands is \(brands.count).")

let brandsUnique: Set<String> = Set(brands)
print("The number of unique brands is \(brandsUnique.count).")
