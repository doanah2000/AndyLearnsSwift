import Cocoa

/// Checkpooint 5:
/// Your input is this:
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

/// Your job is to:
/// - Filter out even numbers
/// - Sort array in ascending order
/// - Map them to strings in the format "7 is a lucky number"
/// - Print each element on a separate line
/// - Without using temporary variables

/// Solo function
func printItemByLine(_ strarray: [String]) {
	for item in strarray {
		print(item)
	}
}

func printSortedLuckyOddNumbers(_ numbers: [Int], _ printFunc: ([String]) -> Void) {
	printFunc(numbers.filter{ !$0.isMultiple(of: 2) }.sorted().map {"\($0) is a lucky number"})
}

printSortedLuckyOddNumbers(luckyNumbers, printItemByLine)

