import Cocoa

/// In Swift, we store ordered data in arrays
var beatles: Array<String> = ["John", "Paul", "George", " Ringo"]
let numbers: Array<Int> = [1, 2, 3, 4, 5]
var temperatures: Array<Double> = [37.0, 38.0, 39.0, 40.0, 41.0]

/// We ask for data by index (0-index), make sure the index always exists
print(beatles[0])
print(numbers[1])

/// If array is variable, it can be modified after. Arrays can only store data off uniform type (type safety)
beatles.append("Liverpool")
// beatles.append(2) will not work

/// We can specify array type on initialization
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(90)
print(scores[1])

var albums: Array<String> = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

/// Can initialize arrays with [], but type must be explicit
//var artists = [] not allowed
var artists: Array<String> = []
var artists2 = [String]()
var artists3 = ["John"]

/// Can use count to count number of items in array
print(albums.count)

/// .remove(at: <index>)
albums.remove(at: 1)
print(albums.count)

/// .removeAll
albums.removeAll()
print(albums.count)

/// .contains
print(beatles.contains("John"))

/// .sorted: for strings it will be alphanumerically, ints will be ascending order
print(beatles.sorted())

/// .reversed will reverse the array, but identify the collection as reversed
print(beatles.reversed())

