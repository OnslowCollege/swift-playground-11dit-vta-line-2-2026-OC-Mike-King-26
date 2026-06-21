// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

print("Welcome to screen time tracker.")
print("")
print("What is the hour limit set for each day?")
print("Enter a number:")

let userInput = readLine() ?? ""
let hourLimit = Double(userInput) ?? -1
var isRunning1 = true


while isRunning1 {

    if hourLimit < 0 {
        print("Please make sure to enter a positive whole number")
        print("Please try again.")
    }
    else if hourLimit < 1 {
        print("The minimum time allowance is 1 hour.")
        print("Please try again.")
    }
    else if hourLimit > 24 {
        print("\(hourLimit) hours is more than how many there are in a day.")
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


let daysOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
var whichDay = 0

let socialMedias: [String] = ["Facebook", "Snapchat", "Instagram", "Discord", "other"]
var whichSocialMedia = 0

var hoursDoomscrolling: [Int] = [0, 0, 0, 0, 0, 0, 0]
var isRunning2 = true
var isRunning3 = true

while isRunning2 {
    
    print("On \(daysOfWeek[whichDay]), how many hours did you spend on:")
    var hoursOnSocialMedias: [Double] = [0]

    while isRunning3 {
        print("\(socialMedias[whichSocialMedia]):")
        let userInput = readLine() ?? ""
        let hoursSpent = Double(userInput) ?? -1

        if hoursSpent < 0 {
            print("Time spent needs to be a positive number.")
            print("Please Try again.")
        }        
        else if (hoursSpent + hoursOnSocialMedias) > 24 {
            print("\(hoursSpent) is more than how many there are in a day.")
            print("Please try again.")
        }
        else if hoursSpent = {}
    }



}


    }
}
