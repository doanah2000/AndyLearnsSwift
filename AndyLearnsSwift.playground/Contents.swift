import Cocoa

/// Swift forces us to acknowledge that there may be errors that arise in our code
/// 1. Define all errors that may occur from our code
/// 2. Write a function that works like normal but can throw one or more errors if a serious error is found.
/// 3. Try and run that function and handle any errors that come back

// Step 1
enum PasswordError: Error {
    case short, obvious
}

// Step 2
func checkPassword(_ password: String) throws -> String {
    if password.count < 8 {
        throw PasswordError.short
    }
    if password == "password" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// Step 3
do {
    let result = try checkPassword("password")
    print(result)
} catch PasswordError.short {
    print("too short")
} catch PasswordError.obvious {
    print("too obvious")
} catch {
    print("Error: \(error)")
}

