import Swift

// Data Types      Example	            Description
// Character	    "s","a"	            a 16-bit Unicode character
// String	        "hello world!"	    represents textual data
// Int	            3,-23	            an integer number
// Float	        2.4, 3.14, -23.21	represents 32-bit floating-point number
// Double	        2.422342412414	    represents 64-bit floating-point number
// Bool	        true and false	    Any of two values: true or false

// Variable can be optional but empty variable is not possible

// optional variable == ?!
// name:Type?
var name:String? = readLine()! // take input as string, and return optional variable

// unwrap optional variable
// if have value then value else nil
// use ! sign after variable
print(name!)

// optional variable without init
let num:Int?
num = 123
print(num!)

// if optional does not get same type the nil
/*
Swift is a type-safe language. A type safe language encourages you to be clear about the types of values your code can work with. If part of your code requires a String, you can’t pass it an Int by mistake.
Because Swift is type safe, it performs type checks when compiling your code and flags any mismatched types as errors. This enables you to catch and fix errors as early as possible in the development process.
*/

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// typealias
typealias AudioSample = UInt16

// Tuples
// Tuples group multiple values into a single compound value. 
// The values within a tuple can be of any type and don’t have to be of the same type as each other.
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"

// Alternatively, access the individual element values in a tuple using index numbers starting at zero:

print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"
print("The status code is \(http200Status.statusCode)")

// Optionals
// You use optionals in situations where a value may be absent. 
// An optional represents two possibilities: 
// Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"
// Because the initializer might fail, 
// it returns an optional Int, rather than an Int. 
// An optional Int is written as Int?, not Int. 
// The question mark indicates that the value it contains is optional, 
//meaning that it might contain some Int value, or it might contain no value at all. 
// (It can’t contain anything else, such as a Bool value or a String value. It’s either an Int, or it’s nothing at all.)

// Optional Binding
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"

let myNumber = Int(possibleNumber)
// Here, myNumber is an optional integer
if let myNumber = myNumber {
    // Here, myNumber is a non-optional integer
    print("My number is \(myNumber)")
}
// Prints "My number is 123"
if let myNumber {
    print("My number is \(myNumber)")
}
// Prints "My number is 123"

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100"


// An implicitly unwrapped optional is a normal optional behind the scenes, 
// but can also be used like a non-optional value, 
// without the need to unwrap the optional value each time it’s accessed. 
// The following example shows the difference in behavior between an optional string 
// and an implicitly unwrapped optional string when accessing their wrapped value as an explicit String:
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point


///
func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}


/// 
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")