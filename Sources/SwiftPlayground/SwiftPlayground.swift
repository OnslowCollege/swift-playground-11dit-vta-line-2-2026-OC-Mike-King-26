// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

    // Welcomes the user and asks their work hours this week.
    print("Welcome to Personal Finances Tracker")
    print("")
    print("Enter your work hours this week:")

    /// The function simply says to the user to please try again.
    func tryAgain() {
        print("Please try again:")
    }

    /// Variable keeps track of the user's work hours this week.
    var workHours = 0

    /// This variable is a general one used to start many while loops in the code.
    var isRunning: Bool = true

    // Repeats until the input for work hours is accepted and set.
    while isRunning {

        // Receives input from user and turns the data into an integer.
        // If the user inputs anything other than a number, workHoursRequest will be set to -1 instead.
        let userInput = readLine() ?? ""
        let workHoursRequest = Int(userInput) ?? -1

        // Makes sure the user's input is a valid number for work hours.
        // If not, restarts the loop and asks again.
        if workHoursRequest < 0 {
            print("Make sure to purely enter a valid whole number.")
            tryAgain()
        } else if workHoursRequest > 168 {
            print("There are only 168 hours in a week.")
            tryAgain()
        } else if workHoursRequest > 20 {
            print("Youth with part time jobs cannot exceed 20 hours per week.")
            tryAgain()

        // Sets the userinput and ends the loop.
        } else {
            workHours = workHoursRequest
            isRunning = false
        }
    }

    // Asks for hourly rate and makes a variable for the hourly rate to get put into.
    print("Enter your hourly rate:")
    var hourlyRate = 0

    // Makes the while loop start repeating.
    isRunning = true

    // Repeats until the userinput for hourlyRate is accepted and set.
    while isRunning {

        // Receives input from user and turns the data into an integer.
        // If the user inputs anything other than a number, hourlyRateRequest will be set to -1 instead.
        let userInput = readLine() ?? ""
        let hourlyRateRequest = Int(userInput) ?? -1

        // Makes sure the userinput is a valid number for the hourly rate.
        // If not, restarts the loop and asks for input again.
        if hourlyRateRequest < 0 {
            print("Make sure to purely enter a valid whole number.")
            tryAgain()
        } 
        else if hourlyRateRequest < 19 {
            print(
                "Youth with part time jobs cannot earn less than $19 an hour as that is the minimum wage."
            )
            tryAgain()
        } 
        else if hourlyRateRequest > 24 {
            print(
                "Youth with part time jobs cannot earn more than $24 an hour as that is the adult minimum wage."
            )
            tryAgain()
        } 

        // Sets the userinput as the hourlyRate the ends the loop.
        else {
            hourlyRate = hourlyRateRequest
            isRunning = false

        }
    }

    /// Is the taxrate set for the code.
    let taxRate = 0.15

    /// Calculates the total money the user made before tax.
    let totalMoneyBeforeTax = hourlyRate * workHours

    /// Calculates the amount the user will be taxed on.
    let taxAmount = Double(totalMoneyBeforeTax) * taxRate

    /// Calculates the money the user has after taxes.
    let totalMoneyAfterTax = Double(totalMoneyBeforeTax) - taxAmount

    // Tells the user their total money before taxes, the amount they get taxed on, and the amount they have after taxes.
    print("")
    print("----")
    print("You earn $\(totalMoneyBeforeTax).")
    print("You pay $\(taxAmount) in income tax.")
    print("You earn $\(totalMoneyAfterTax) TOTAL.")
    print("----")
    print("")

    /// This variable is used to run the main while loop which adds expenses.
    var listExpenses = false

    // Makes the loop for asking if the user has expenses run.
    isRunning = true

    // Repeatedly asks the user if they have any expenses until the user puts in 'y', or 'n'.
    while isRunning {

        // Asks user if they have any expenses.
        print("Do you have any expenses?")
        print("(Y/N):")

        // Turns the userinput into a constant and provides a fallback when unwrapping.
        // This is done when the user inputs something which would usually crash the program.
        let userInput = readLine()?.lowercased() ?? ""
        
        // Checks if the user inputed a valid answer and loops until it is.
        // Then answers accordingly.
        if userInput != "y" && userInput != "n" {
            print("Make sure to enter 'Y', or 'N'.")
            tryAgain()
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

    /// This is used to store the names of the user's expenses.
    var expenseNames: [String] = []

    /// This is used to store the cost of the user's expenses.
    var expenseCosts: [Int] = []

    // Runs until the program stops recieving expenses from the user.
    while listExpenses {

        // Simply used for running the following while loop.
        isRunning = true

        // Repeats until the name of the user's expense is collected.
        while isRunning {
            print("")
            print("Enter a name for your expense:")

            // Turns the user's input into a constant and has a fallback if something entered would have broken the program.
            let expenseName = readLine() ?? ""

            // If the input from the user was nothing, the loop restarts and asks again.
            if expenseName == "" {
                print("Make sure to enter a valid expense name.")
                tryAgain()
            } 
            
            // Sets the user's input as the expense name and asks for the cost of the expense.
            else {
                expenseNames.append(expenseName)
                print("Enter '\(expenseName)' cost per week:")

                // Ends the loop.
                isRunning = false
            }
        }

        // Starts the following while loop.
        isRunning = true

        // Repeats the while loop until the cost of the expense is collected.
        while isRunning {

            // Takes in the user's input, converts it to an int, and provides a backup incase something is incorrect.
            let expenseCostRequest = readLine() ?? ""
            let expenseCost = Int(expenseCostRequest) ?? -1

            // Tells the user to try again as they entered an invalid input.
            if expenseCost < 0 {
                print("Make sure to purely enter a valid whole number.")
                tryAgain()
            }

            // Sets the user's input as the cost and ends the loop.
            else {
                expenseCosts.append(expenseCost)
                isRunning = false
            }
        }

        // Asks if the user wants another expense and starts the following while loop.
        print("Add another expense?")
        print("(Y/N):")
        isRunning = true

        // Repeats until the user tells the program if they want another expense.
        while isRunning {

            /// Recieves the user's input, and attempts to turn it into a lowercased version of the constant.
            /// If it can't, sets the constant as "".
            let userInput = readLine()?.lowercased() ?? ""

            // If the input isn't y or n, restarts the loop.
            // Otherwise, it ends the loop and does or doesn't enable the list expenses loop.
            if userInput != "y" && userInput != "n" {
                print("Make sure to enter 'Y', or 'N'.")
                tryAgain()
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

    /// Simply tells the program if there are expenses or not.
    var areThereExpenses = false

    // Checks if there are expenses.
    if expenseNames.count > 0 {
        areThereExpenses = true
    }

    /// Starts with the same value as money after tax.
    var totalMoneyAfterExpenses = totalMoneyAfterTax


    // If there were expenses, starts a for loop to list all the expenses and change the total money to what it is after all the expenses.
    if areThereExpenses == true {
    /// This variable is used to check which expense to print during the for loop.
    var whichExpense = 0

    print("----")
    print("$\(totalMoneyAfterTax)")

    //Loops until all expenses are listed along with their costs.
    for _ in expenseNames {
    print("- $\(expenseCosts[whichExpense]) for \(expenseNames[whichExpense])")
    totalMoneyAfterExpenses = totalMoneyAfterExpenses - Double(expenseCosts[whichExpense])

    //Increases the variable whichExpense by one so when the loop repeats, it prints the next expense.
    whichExpense = whichExpense + 1
    }
    print("----")
    }
    

    // Otherwise prints the money after tax and says no expenses.
    else {
        print("----")
        print("$\(totalMoneyAfterTax)")
        print("- No expenses")
        print("----")
    }


    /// The variable is used to tell the program whether or not the user is in debt.
    var isInDebt = false


    // Checks if the total money left is negative.
    // If it is, prints the money out as a negative and sets isIndebt to true.
    if totalMoneyAfterExpenses < 0 {
        print("= -$\(totalMoneyAfterExpenses)")
        isInDebt = true
    }

    // Otherwise, prints the money as usual and keeps isInDebt as false.
    else {
        print("= $\(totalMoneyAfterExpenses)")
    }


    print("")


    // If the user is in debt, tells the user to reduce their expenses.
    if isInDebt {
        print("You are in debt this week, please reduce your expenses.")
    }

    // Otherwise states that the user can afford their expenses.
    else {
        print("You can afford your expenses this week.")
    }

    }
}