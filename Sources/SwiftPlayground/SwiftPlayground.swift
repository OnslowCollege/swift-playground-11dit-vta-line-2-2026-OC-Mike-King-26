// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

print("Welcome to the sleep tracker.")
print("")
print("Let's start by recording your sleep")

// a bunch of variable which are being used by the program
var whichDay = 0
var hoursOfSleepEachDay: [Double] = [0, 0, 0, 0, 0, 0, 0]
let dayOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let totalHours = hoursOfSleepEachDay.reduce(0, +)
let averageSleep = totalHours / 7
var isRunning = true


while isRunning {
    print("How many hours of sleep did you get on \(dayOfWeek[whichDay])")
    let userInput = readLine() ?? ""
    let userDoubleInput = Double(userInput) ?? -1


    func addSleepAndNextDay() {
        hoursOfSleepEachDay[whichDay] = userDoubleInput
        whichDay = whichDay + 1
        print("\(userDoubleInput) has been added to record.")
        print("")
    }


    if userDoubleInput <= -1 {
        print("Please make sure to enter a valid positive number.")
        }
    else if userDoubleInput > 24 {
        print("\(userDoubleInput) is more than 24 hours which is the maximum time in a day.")   
        print("Please try again.")
    }
    else if userDoubleInput >= 16 {
        print("Be aware that \(userDoubleInput) hours of sleep is abnormal.")
        addSleepAndNextDay()
    }
    else if userDoubleInput >= 0 && userDoubleInput <= 24 {
        addSleepAndNextDay()
    }
    else {print("An error has occured, sorry for the inconvenience.")}


    if whichDay == 7 {isRunning = false}
    }


var sleepRating = ""
if averageSleep < 0 {
    sleepRating = "Error"
}
else if averageSleep < 6.0 {
    sleepRating = "Poor"
}
else if averageSleep < 8.0 {
    sleepRating = "Ok"
}
else if averageSleep > 8.0 && averageSleep < 24.0 {
    sleepRating = "Good"
}

print("You got a total of \(totalHours) hours of sleep,")
print("which averages to \(averageSleep) per day")
print("")
print("Your sleep rating is: \(sleepRating)")






    }
}
