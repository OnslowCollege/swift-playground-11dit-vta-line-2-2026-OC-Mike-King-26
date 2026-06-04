
// The Swift Programming Language
// https://docs.swift.org/swift-book




@main
struct SwiftPlayground {
    static func main() {

//asks user's age and creates variable for the while loop
print("What is your age?")
var next = true

//checks if input is a number and if between 0 and 123
//if not number, says "please enter a number"
//if not between 0 and 123, says "Age Incorrect"
var input: String? = readLine()
var age = Int(input)

while next {

if age {
    if age <= 0 || age >= 122 {
        print("Age Incorrect, try again")}
    
    else {next = false}}
else {print("Please enter a number")}
}

if let input = readLine(), let age = Int(input) {
if age <= 18 {
        print("Too young.")
    } else {
        print("You may enter")
    }
} else {
    print("Please enter a number.")
}






    }
}
