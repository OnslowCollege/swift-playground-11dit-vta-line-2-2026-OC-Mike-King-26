// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {


print("What is your age?")

if let input = readLine(), let age = Int(input) {
    if age <= 0 || age >= 122 {
        print("Age incorrect.")
    } else if age <= 18 {
        print("Too young.")
    } else {
        print("You may enter")
    }
} else {
    print("Please enter a number.")
}






    }
}
