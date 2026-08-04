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
let daysOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]


var isRunning = true


while isRunning {
    print("How many hours of sleep did you get on \(daysOfWeek[whichDay])")
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


let totalHours = hoursOfSleepEachDay.reduce(0, +)
let averageSleep = Int(totalHours / 7)


var sleepRating = ""
if averageSleep < 0 {
    sleepRating = "Error"
}
else if averageSleep < 6 {
    sleepRating = "Poor"
}
else if averageSleep < 8 {
    sleepRating = "Ok"
}
else {
    sleepRating = "Good"
}


var dayCount = 0

for dayOfWeek in daysOfWeek {
    print("Your sleep on \(dayOfWeek) was: \(hoursOfSleepEachDay[dayCount]) hours.")
    dayCount = dayCount + 1
}


print("")
print("You got a total of \(totalHours) hours of sleep,")
print("which averages to around \(averageSleep) hours per day")
print("")
print("Your sleep rating is: \(sleepRating)")


    }
}
