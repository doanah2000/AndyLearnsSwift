import Cocoa

/// Sets work similarly to arrays except they are unordered and items cannot be duplicated
var actors: Set<String> = [
    "Denzel Washington",
    "Tom Cruise",
    "Brad Pitt",
    "Leonardo DiCaprio",
    "Will Smith",
]
print(actors)

var artists: Set<String> = Set([
    "Beyoncé",
    "Justin Timberlake",
    "Ariana Grande",
])
print(artists)

/// .insert
actors.insert("Tom Hanks")
artists.insert("Rihanna")
print(actors)
print(artists)

/// Sets have no order, but calling .contains is much more optimized for sets than for arrays. When running .sorted, returns a sorted array.
let sortedActors: Array<String> = actors.sorted()
print(sortedActors)
