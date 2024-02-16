// Description: Write a function in Swift called greet based on provided requirements.

// Purpose: Provide experience with writing Swift functions.

// Requirements:

// For this challenge you are to submit the code for the requested function in the text area provided with the assignment.

// The name of the function: greet

// The function has two parameters:

// The first parameter is a String that provides the name of the person to be greeted. The argument label is to be person and the parameter name is to be name.
// The second parameter is a String that provides the greeting to be used. The argument label and the parameter name are both to be greeting.
// The function returns a String that is comprised of the greeting followed by a space followed by the name of the person to be greeted.

// Example return String: Hello Maria


func greet(person name: String, greeting: String) -> String {
    return "\(greeting) \(name)"
}

print(greet(person: "Maria", greeting: "Hello")) // Hello Maria

