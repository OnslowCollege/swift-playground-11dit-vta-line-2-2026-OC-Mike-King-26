// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

    //Welcomes the user and asks their work hours this week.
    print("Welcome to Personal Finances Tracker")
    print("")
    print("Enter your work hours this week:")

    ///Variable keeps track of the user's work hours this week.
    var workHours = 0

    ///This variable is a general one used to start many while loops in the code.
    var isRunning: Bool = true

    //Repeats until the input for work hours is accepted and set.
    while isRunning {

        //Receives input from user and turns the data into an integer.
        //If the user inputs anything other than a number, workHoursRequest will be set to -1 instead.
        let userInput = readLine() ?? ""
        let workHoursRequest = Int(userInput) ?? -1

        //Makes sure the user's input is a valid number for work hours.
        //If not, restarts the loop and asks again.
        if workHoursRequest < 0 {
            print("Make sure to purely enter a valid whole number.")
            print("Please try again:")
        } else if workHoursRequest > 168 {
            print("There are only 168 hours in a week.")
            print("Please try again:")
        } else if workHoursRequest > 20 {
            print("Youth with part time jobs cannot exceed 20 hours per week.")
            print("Please try again:")

        //Sets the userinput and ends the loop.
        } else {
            workHours = workHoursRequest
            isRunning = false
        }
    }

    //Asks for hourly rate and makes a variable for the hourly rate to get put into.
    print("Enter your hourly rate:")
    var hourlyRate = 0

    //Makes the while loop start repeating.
    isRunning = true

    //Repeats until the userinput for hourlyRate is accepted and set.
    while isRunning {

        //Receives input from user and turns the data into an integer.
        //If the user inputs anything other than a number, hourlyRateRequest will be set to -1 instead.
        let userInput = readLine() ?? ""
        let hourlyRateRequest = Int(userInput) ?? -1

        //Makes sure the userinput is a valid number for the hourly rate.
        //If not, restarts the loop and asks for input again.
        if hourlyRateRequest < 0 {
            print("Make sure to purely enter a valid whole number.")
            print("Please try again:")
        } 
        else if hourlyRateRequest < 19 {
            print(
                "Youth with part time jobs cannot earn less than $19 an hour as that is the minimum wage."
            )
            print("Please try again:")
        } 
        else if hourlyRateRequest > 24 {
            print(
                "Youth with part time jobs cannot earn more than $24 an hour as that is the adult minimum wage."
            )
            print("Please try again:")
        } 

        //Sets the userinput as the hourlyRate the ends the loop.
        else {
            hourlyRate = hourlyRateRequest
            isRunning = false

        }
    }

    ///Is the taxrate set for the code.
    let taxRate = 0.15

    ///Calculates the total money the user made before tax.
    let totalMoneyBeforeTax = hourlyRate * workHours

    ///Calculates the amount the user will be taxed on.
    let taxAmount = Double(totalMoneyBeforeTax) * taxRate

    ///Calculates the money the user has after taxes.
    let totalMoneyAfterTax = Double(totalMoneyBeforeTax) - taxAmount

    //Tells the user their total money before taxes, the amount they get taxed on, and the amount they have after taxes.
    print("")
    print("----")
    print("You earn $\(totalMoneyBeforeTax).")
    print("You pay $\(taxAmount) in income tax.")
    print("You earn $\(totalMoneyAfterTax) TOTAL.")
    print("----")
    print("")

    ///This variable is used to run the main while loop which adds expenses.
    var listExpenses = false

    //Makes the loop for asking if the user has expenses run.
    isRunning = true

    //Repeatedly asks the user if they have any expenses until the user puts in 'y', or 'n'.
    while isRunning {

        //Asks user if they have any expenses.
        print("Do you have any expenses?")
        print("(Y/N)")

        //Turns the userinput into a constant and provides a fallback when unwrapping incase the user inputs nothing.
        let userInput = readLine()?.lowercased() ?? ""
        
        //Checks if the user inputed a valid answer and loops until it is.
        //Then answers accordingly.
        if userInput != "y" && userInput != "n" {
            print("Make sure to enter 'Y', or 'N'.")
            print("Please try again:")
        } else if userInput == "y" {
            isRunning = false
            listExpenses = true
        } else if userInput == "n" {
            isRunning = false
        }
        else {
            print("An error has occured, please try again.")
        }
    }

    var expenseNames: [String] = []
    var expenseCosts: [Int] = []

    while listExpenses {

        isRunning = true

        while isRunning {
            print("")
            print("Enter a name for your expense:")

            let expenseName = readLine() ?? ""

            if expenseName == "" {
                print("Make sure to enter a valid expense name.")
                print("Please try again:")
            } else {
                expenseNames.append(expenseName)
                print("Enter '\(expenseName)' cost per week:")
                isRunning = false
            }
        }


        isRunning = true

        while isRunning {
            let expenseCostRequest = readLine() ?? ""
            let expenseCost = Int(expenseCostRequest) ?? -1

            if expenseCost < 0 {
                print("Make sure to purely enter a valid whole number.")
                print("Please try again:")
            }
            else {
                expenseCosts.append(expenseCost)
                isRunning = false
            }
        }
    
        print("Add another expense?")
        print("(Y/N):")
        isRunning = true

        while isRunning {
            let userInput = readLine()?.lowercased() ?? ""

            if userInput != "y" && userInput != "n" {
                print("Please make sure to enter 'Y', or 'N'.")
            }
            else if userInput == "y" {
                isRunning = false
            }
            else if userInput == "n" {
                isRunning = false
                listExpenses = false
            }
            else {
                print("An error has occured, please try again.")
            }
        }
        

    }


    var areThereExpenses = false

    if expenseNames.count > 0 {
        areThereExpenses = true
    }
    
    var totalMoneyAfterExpenses = totalMoneyAfterTax

    if areThereExpenses == true {
    var whichExpense = 0
    print("----")
    print("$\(totalMoneyAfterTax)")
    for _ in expenseNames {
    print("- $\(expenseCosts[whichExpense]) for \(expenseNames[whichExpense])")
    totalMoneyAfterExpenses = totalMoneyAfterExpenses - Double(expenseCosts[whichExpense])
    whichExpense = whichExpense + 1
    }
    print("----")
    }

    else {
        print("----")
        print("$\(totalMoneyAfterTax)")
        print("- No expenses")
        print("----")
    }

    var isInDebt = false

    if totalMoneyAfterExpenses < 0 {
        print("= -$\(totalMoneyAfterExpenses)")
        isInDebt = true
    }
    else {
        print("= $\(totalMoneyAfterExpenses)")
    }

    print("")

    if isInDebt {
        print("You are in debt this week. please reduce your expenses.")
    }
    else {
        print("You can afford your expenses this week.")
    }

    }
}