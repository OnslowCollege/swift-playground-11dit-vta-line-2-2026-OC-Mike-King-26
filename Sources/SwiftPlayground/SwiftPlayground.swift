// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

var ingredients: [String] = []
var isrunning = true

//asks for ingredients
print("Please enter the ingredients you have (one at a time).")
print("When finished, with all ingredients, press enter")

//makes while loop to see what input is and turns user input into constant
while isrunning {
let userinput = readLine()!.lowercased()

// prints full list when user enters nothing
if userinput == "" {
    print("Here is the full list")
    for ingredient in ingredients {
    print(ingredient)
    }
    //checks for chocolate and if there is any, prints yum
    if ingredients.contains("chocolate") {
    print("")
    print("YUM!")
    }
        isrunning = false
    }

//adds user input into array
else {
    ingredients.append(userinput)
    print("\(userinput) has been added")
}}

print("Bye")











}
}