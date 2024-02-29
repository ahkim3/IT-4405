/*
    Travel Photo Struct Challenge
    ----------------------------

    In this challenge you are to create a struct based on the information provided below and submit the code in the assignment text box for the struct as well as the line of code for creating the specified instance.

    The struct name: TravelPhoto

    The struct has the following properties:

    latitude
    longitude
    title
    description
    image
    urlString
    The latitude and longitude are of type Double.

    The title, description, image, urlString are of type String.

    The properties of the struct are not changeable after they are set.

    After the code for the struct, create an instance and assign it to a constant called photo1 using the following information:

    latitude = 38.94733
    longitude = -92.328466
    title = “The Mizzou Columns”
    description = “University of Missouri six iconic columns”
    image = “columns.png”
    urlString = “http://missouri.edu/about/history/columns.php”

*/


struct TravelPhoto {
    let latitude: Double
    let longitude: Double
    let title: String
    let description: String
    let image: String
    let urlString: String
}

let photo1 = TravelPhoto(latitude: 38.94733, longitude: -92.328466, title: "The Mizzou Columns", description: "University of Missouri six iconic columns", image: "columns.png", urlString: "http://missouri.edu/about/history/columns.php")

// Test Travel Photo Struct Challenge
print("Travel Photo Struct Challenge")
print("")
print("Latitude: \(photo1.latitude)")
print("Longitude: \(photo1.longitude)")
print("Title: \(photo1.title)")
print("Description: \(photo1.description)")
print("Image: \(photo1.image)")
print("URL: \(photo1.urlString)")
print("")
print("")

/*
    Document Class Challenge
    ------------------------

    In this challenge you are to create a class based on the information provided below and submit the code in the assignment text box.

    The class name: Document

    The class has the following properties:

    - title
    - body
    - length

    The title is of type String. It is not an optional. When it is declared it is not set to an initial value. Since it is not an optional and does not have a value set when it is declared, the class init must set the title when a Document instance is created.

    The body is of type String. It is not an optional and is set to an empty string ("") when it is declared.

    The length is a computed property of type Int. The length property has only a getter that returns the number of characters in the body string. The number of characters in the body can be determined using:

    `body.count`

    The title and body are to be modifiable. They are not to be implemented as constants.

    The Document class is to have two initializers. One initializer is to receive only the title. The other initializer is to receive a title and a body.
*/

class Document {
    var title: String
    var body: String = ""
    var length: Int {
        return body.count
    }

    init(title: String) {
        self.title = title
    }

    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}

// Test Document Class Challenge
print("Document Class Challenge")
print("")
let document1 = Document(title: "Hello World")
document1.title = "Hello World!"
document1.body = "I awoke from a digital slumber."
let document2 = Document(title: "The Day", body: "It was a day to remember.")
print(document1.title)
print(document1.body)
print(document1.length)
print(document2.title)
print(document2.length)
print("")
print("")


/*
    Challenge: Colors Array
    ------------------------

    Write and test the code that meets the following requirements. Submit the code in the text box provided with the assignment.

    It is recommended you create an Xcode project or playground to write and test the code. Do not submit the Xcode project or playground. Submit the block of code in the assignment text box.

    Declare a variable called colors that is an array that holds the string names of a collection of colors and is initialized with the following color names: red, orange, yellow, and pink.

    Remove the last item from the colors array using an array method. (This will remove “pink”.)

    Add “green” to the end of the colors array.

    Create a constant called numColors and set it equal to the number of colors in the array. (Use the computed property available on the array that provides the number of items in the array.)

    Print the number of colors in the array using the format: number of colors = <numColors>

    Print the string “colors:”

    Iterate through the colors array using a for-in loop and print out each array element.

    Declare a constant called moreColors that is an array that is initialized with the following color names: blue, purple

    Declare a variable called allColors and assign it the combined elements of colors and moreColors. The colors elements are to come first and the moreColors elements are to come second in allColors.

    Print the string “all colors:”

    Iterate through the allColors array using a for-in loop and print out each array element.
*/

print("Colors Array Challenge")
print("")

var colors = ["red", "orange", "yellow", "pink"]
colors.removeLast()
colors.append("green")
let numColors = colors.count
print("number of colors = \(numColors)")
print("colors:")
for color in colors {
    print(color)
}

let moreColors = ["blue", "purple"]
var allColors = colors + moreColors
print("all colors:")
for color in allColors {
    print(color)
}

print("")
print("")


/*
    Challenge: States Collection
    ----------------------------

Write and test the code that meets the following requirements. Submit the text of the code in the text box provided with the assignment.

It is recommended you create an Xcode project or playground to write and test the code. Do not submit the Xcode project or playground. Submit the block of code as text in the assignment text box.

States in the USA are abbreviated with two letter codes. For example, Missouri is MO, Pennsylvania is PA, and California is CA.

1. Declare a variable called states that is declared as a Swift collection type that has elements that have keys which are a state’s abbreviation and values that are a state’s name. On the declaration line initialize the collection with an empty instance of the collection type.

2. Add Missouri (MO), Pennsylvania (PA), and California (CA) to the collection.

3. Using for-in iterate through the key/value pairs of the collection and print them in the format: <key> is <value>

4. Obtain an array of all of the state abbreviations in the collection and assign it to a constant called stateCodes.

5. Iterate through the array of state abbreviations and print each one.

6. Remove Pennsylvania (PA) from the collection using subscript syntax and assigning a nil.

7. Remove Missouri (MO) from the collection using the removeValue(forKey:) method on the collection.

8. Using for-in iterate through the key/value pairs of the collection and print them in the format: <key> is <value>
*/

print("States Collection Challenge")
print("")

var states: [String:String] = [:]
states["MO"] = "Missouri"
states["PA"] = "Pennsylvania"
states["CA"] = "California"
for (key, value) in states {
    print("\(key) is \(value)")
}
let stateCodes = Array(states.keys)
for code in stateCodes {
    print(code)
}
states["PA"] = nil
states.removeValue(forKey: "MO")
for (key, value) in states {
    print("\(key) is \(value)")
}

print("")
print("")


struct Circle {
     var radius = 0.0
     var x = 0.0
     var y = 0.0
}

// Given the struct Circle, create an instance with a radius of 5.0, and a position of x = 2.3 and y = 7.1
let circle = Circle(radius: 5.0, x: 2.3, y: 7.1)

