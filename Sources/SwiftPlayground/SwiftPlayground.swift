// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

print("Welcome to the sleep tracker.")
print("")
print("Let's start by recording your sleep")

var HoursOfSleepEachDay: [Int] = [0, 0, 0, 0, 0, 0, 0]
let DayOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
var TotalHours = 0
let AverageSleep = TotalHours / 7
var IsRunning = true
var IsRunning2 = true

while IsRunning {
    while IsRunning2 {
    print("How many hours of sleep did you get on \(DayOfWeek)")
    print("(To the nearest hour)")
    let UserInput = readLine() ?? ""
    let UserIntInput = Int(UserInput) ?? -1

    if UserIntInput <= -1 {
        print("Please make sure to enter a valid positive number.")
    }
    else if UserIntInput > 24 {
    print("There are more than \(UserIntInput)")   
    }
    }


//note, turn ints into double so if user inputs 24.1 hours it says there are not that many hours in a day instead of it equaling to 24
}





    }
}
