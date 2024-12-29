import Cocoa

/// Reading items from index can be problematic and dangerous, since fields would not be explicit and if arrays are variable the index may no longer be valid. Solution to this is Dictionaries
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
/// Fields on the left are keys, fields on right are values.
print(employee["name"])
print(employee["job"])
print(employee["location"])

/// Key may not exist:
print(employee["age"]) // prints "nil"

/// When you access data like this, the result may or may not be empty, similar to Java optionals
/// When dealing with dictionaries, we can p[rovide a default value if keys do not exist
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])
print(employee["age", default: "Unknown"])

/// We can use other data types as much as possible
let hasGraduated: [String: Bool] = [
    "Tim": false,
    "Jake": true,
    "Taylor": true
]

let olympics: Dictionary<Int, String> = [
    2012: "London",
    2016: " Rio",
    2020: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

/// Can initialize empty dictionary and "put" key--value pairs
var heights = [String: Int]()
heights["Tim"] = 178
heights["Jake"] = 180
heights["Taylor"] = 179
print(heights)

/// Dictionaries do not allow duplicate keys. If key exists, value is overwritten
print(heights["Tim", default: 0])
heights["Tim"] = 181
print(heights["Tim", default: 0])

/// .count
print(heights.count)

/// .removeValue
heights.removeValue(forKey: "Tim")
print(heights["Tim", default: 0])

/// .removeAll
heights.removeAll()
print(heights.count)
