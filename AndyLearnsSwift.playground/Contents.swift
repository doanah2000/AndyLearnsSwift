import Cocoa

// Checkpoint 1: Celsius to Fahrenheit Conversion

///
/// Goal:
///     1. Create a constant holding any temperatur in Celsius
///     2. Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32
///     3. Prints the result ffor the user, showing both the Celsius and Fahrenheit values
///

let temperatureInCelsius: Double = 25.0
let temperatureInFahrenheit: Double = temperatureInCelsius * 9 / 5.0 + 32
let message:String = "The conversion for \(temperatureInCelsius)°C to Fahrenheit is \(temperatureInFahrenheit)°F."
