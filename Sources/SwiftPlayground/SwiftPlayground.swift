// The Swift Programming Language
// https://docs.swift.org/swift-book

@main 
struct SwiftPlayground {
    static func main() {

//Welcomes the user and asks what time limit should be set for each day.
print("Welcome to screen time tracker.")
print("")
print("What is the hour limit set for each day?")
print("Enter a number:")


///Is used to keep the while loop running
var isRunning1 = true

///Sets the limit which used in the summary to check if the user doomscrolled too much or was all good
var hourLimit = 0


while isRunning1 {

    //Turns user input into a constant for the loop to use.
    //Also safely turns the input into -1 if it's nothing or invalid.
    let userInput = readLine() ?? ""
    let hourLimitRequest = Int(userInput) ?? -1 


    //Checks if input is a negative number, if not, restarts again.
    if hourLimitRequest < 0 {
        print("Please make sure to enter purely a positive whole number")
        print("Please try again.")
    }

    //If input was 0, restarts because that is below the minimum time allowance.
    else if hourLimitRequest < 1 {
        print("The minimum time allowance is 1 hour.")
        print("Please try again.")
    }
    //Checks if the input was more than there are hours in a day.
    //If so, resets as that is invalid.
    else if hourLimitRequest > 24 {
        print("\(hourLimitRequest) hours is more than how many there are hours in a day.")
        print("And maximum time allowance is 5 hours.")
        print("Please try again.")
    }

    //Restarts loop if the input is over the maximum time allowance
    else if hourLimitRequest > 5 {
        print("The maximum time allowance is 5 hours.")
        print("Please try again.")
    }

    //Sets the input as time limit and finishes the loop.
    else {
        hourLimit = (hourLimitRequest)
        print("\(hourLimitRequest) has been set as the time allowance.")
        print("")
        isRunning1 = false
    }
}


///Is a list of all of the days of the week for the program to print from.
let dayOfWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

///Chooses which day of the week would be printed for the program.
var whichDay = 0

///Is a list on all the different social medias the program would print from.
let socialMedias: [String] = ["Facebook", "Snapchat", "Instagram", "Discord", "other", "test"]

///Chooses which social media would be printed for the program.
var whichSocialMedia = 0


///Keeps the while loop running to collect all necesarry data for the summary.
var isRunning2 = true


///Stores data for the summary to use when enough data has been collected.
var hoursDoomscrolling = 0

///Stores data for hours spent in a given day.
var hoursOnSocialMedias: [Int] = [0, 0, 0, 0, 0]


//Keeps looping until the hours doomscrolled on all 7 days of the week gets collected.
while isRunning2 {

    //Resets which social media would be shown back to the start
    whichSocialMedia = 0


    //Checks if all 7 days have been given screen time data on.
    //If so, finishes the loop and moves onto summary
    if whichDay == 7 {
        isRunning2 = false
    }

    /*Asks user how much scrolling they did on a certian day and starts the
    data collection loop after resetting the hoursOnSocialMedias to the original state. This happens if all data hasn't been collected.*/
    else {  
        hoursOnSocialMedias = [0, 0, 0, 0, 0]
        print("")
        print("On \(dayOfWeek[whichDay]), how many hours did you spend on:")
        isRunning1 = true
    }

    while isRunning1 {

        ///Turns the data of the hours user spent on social media into one number.
        var totalHoursOnSocialMedias = hoursOnSocialMedias.reduce(0, +)

        //Prints which social media the user needs to enter the info about.
        print("\(socialMedias[whichSocialMedia]):")

        //Turns user input into a constant for the loop to use.
        //Also safely turns the input into -1 if it's nothing or invalid.
        let userInput = readLine() ?? ""
        let hoursSpent = Int(userInput) ?? -1


        //Checks if input is a negative number, if not, restarts again.
        if hoursSpent < 0 {
            print("Time spent needs to purely be a positive whole number.")
            print("Please Try again.")
        }   

        //Checks if user entered more than 24 hours doomscrolling for one media.
        //If so, tells the user to retry and redoes the media.
        else if hoursSpent > 24 {
            print("\(hoursSpent) is more than how many there are hours in a day.")
            print("Please try again.")
        }

        //Checks if user inputed more hours doomscrolling than in a day.
        //If they did, resets the day and tells the user to start again.
        else if hoursSpent + totalHoursOnSocialMedias > 24 {
            print("Your total hours on \(dayOfWeek[whichDay]) exceeds 24 hours.")
            print("You will need to redo this day.")
            print("")
            isRunning1 = false
        }

        //Adds input to data collection and moves to next social media.
        //Also restates what the total hours are for the day.
        else {
            hoursOnSocialMedias[whichSocialMedia] = hoursSpent
            whichSocialMedia = whichSocialMedia + 1
            totalHoursOnSocialMedias = hoursOnSocialMedias.reduce(0, +)
        }

        //checks if all data has been collected for the day
        //if it has, provides brief summary and ends the loop making it the next day.
        if whichSocialMedia == 5 {
            print("Overall on \(dayOfWeek[whichDay]) you spent \(totalHoursOnSocialMedias) hours doomscrolling.")
            whichDay = whichDay + 1
            hoursDoomscrolling = hoursDoomscrolling + totalHoursOnSocialMedias
            isRunning1 = false
        }
    }
}


///Constant is the average time spent per day on cellphone.
let averageHoursScrolling = hoursDoomscrolling / 7


///Variable is used to decide if the user met the hourlimit or not.
var limitDecision = ""


// Decides if the user was over, exactly, or under the limit.
// This is done by checking if the average hours was greater, equal to, or under hourlimit variable.
if averageHoursScrolling > hourLimit {
    limitDecision = "OVER"
}
else if averageHoursScrolling == hourLimit {
    limitDecision = "EXACTLY"
}
else if averageHoursScrolling < hourLimit {
    limitDecision = "UNDER"
}


/*Provides a summary of how much time they spent scrolling in total, 
on average, and if the average was above or below the set hour limit per day.*/
print("")
print("SUMMARY")
print("=-----=")
print(" - This week you spent \(hoursDoomscrolling) hours doomscrolling")
print(" - Average of \(averageHoursScrolling) hours per day") 
print("Overall, your usage is \(limitDecision) the limit!")





    }
}
