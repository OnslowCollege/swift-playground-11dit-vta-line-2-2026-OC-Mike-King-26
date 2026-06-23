// The Swift Programming Language
// https://docs.swift.org/swift-book

@main 
struct SwiftPlayground {
    static func main() {

print("Welcome to screen time tracker.")
print("")
print("What is the hour limit set for each day?")
print("Enter a number:")


var isRunning1 = true
let userInput = readLine() ?? ""


while isRunning1 {
let hourLimit = Int(userInput) ?? -1

    if hourLimit < 0 {
        print("Please make sure to enter a positive whole number")
        print("Please try again.")
    }
    else if hourLimit < 1 {
        print("The minimum time allowance is 1 hour.")
        print("Please try again.")
    }
    else if hourLimit > 24 {
        print("\(hourLimit) hours is more than how many there are hours in a day.")
        print("And maximum time allowance is 5 hours.")
        print("Please try again.")
    }
    else if hourLimit > 5 {
        print("The maximum time allowance is 5 hours.")
        print("Please try again.")
    }
    else {
        print("\(hourLimit) has been set as the time allowance.")
        print("")
        isRunning1 = false
    }
}


let dayOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
var whichDay = 0

let socialMedias: [String] = ["Facebook", "Snapchat", "Instagram", "Discord", "other"]


var hoursDoomscrolling = 0
var isRunning2 = true
var hoursOnSocialMedias: [Int] = [0, 0, 0, 0, 0]



while isRunning2 {
    var whichSocialMedia = 0
    if whichDay == 7 {
        isRunning2 = false
    }
    else {  
        print("")
        print("On \(dayOfWeek[whichDay]), how many hours did you spend on:")
        isRunning1 = true
    }

    while isRunning1 {
        let totalHoursOnSocialMedias = hoursOnSocialMedias.reduce(0, +)
        print("\(socialMedias[whichSocialMedia]):")
        let userInput2 = readLine() ?? ""
        let hoursSpent = Int(userInput2) ?? -1

        if hoursSpent < 0 {
            print("Time spent needs to be a positive number.")
            print("Please Try again.")
        }        
        else if hoursSpent > 24 {
            print("\(hoursSpent) is more than how many there are hours in a day.")
            print("Please try again.")
        }
        else if hoursSpent + totalHoursOnSocialMedias > 24 {
            print("Your total hours on \(dayOfWeek[whichDay]) exceeds 24 hours.")
            print("You will need to redo this day.")
            print("")
            isRunning1 = false
        }
        else {
            hoursOnSocialMedias[whichSocialMedia] = hoursSpent
            whichSocialMedia = whichSocialMedia + 1
        }
        if whichSocialMedia == 5 {
            print("Overall on \(dayOfWeek[whichDay]) you spent \(totalHoursOnSocialMedias) hours doomscrolling.")
            whichDay = whichDay + 1
            hoursDoomscrolling = hoursDoomscrolling + totalHoursOnSocialMedias
            isRunning1 = false
        }
    }
}

    let averageHoursScrolling = hoursDoomscrolling / 7
    var limitDecision = ""

if averageHoursScrolling > hourLimit {
    limitDecision = "OVER"
}
else if averageHoursScrolling == hourLimit {
    limitDecision = "EXACTLY"
}
else if averageHoursScrolling < hourLimit {
    limitDecision = "UNDER"
}

print("")
print("SUMMARY")
print("=-----=")
print(" - This week you spent \(hoursDoomscrolling) hours doomscrolling")
print(" - Average of \(averageHoursScrolling) hours per day") 
print("Overall, your usage is \(limitDecision) the limit!")





    }
}
