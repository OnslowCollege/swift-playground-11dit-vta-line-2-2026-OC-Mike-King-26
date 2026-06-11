// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

//Some constants and variables which will be used within the code are here

//boolean variables for controlling whether the while loops are on or off
var isRunning1: Bool = true
var isRunning2: Bool = true

//constant for all the different bird species available and variable storing the number of birds seen
let birdSpecies: [String] = [ "Tieke","Kākā", "Takahē", "Hihi", "Kiwi", "Pāteke", "Tūī", "Kererū"]
var birdsSeen: [Int] = [0, 0, 0, 0, 0, 0, 0, 0]

//makes function for printing birdSpecies list with numbers as options
func printBirdOptions() {
    for (index, bird) in birdSpecies.enumerated() {
        print("\(index + 1). \(bird)")
        }
}


//constant for all the different insect species available and variable storing the number of insects seen
let insectSpecies: [String] = [ "Giant Wētā", "Tree Wētā", "Cave Wētā", "Putoko", "Pūngāwerewere", "Ngaokeoke", "Waemano", "Kapowai"]
var insectsSeen: [Int] = [0, 0, 0, 0, 0, 0, 0, 0]

//makes function for printing insectSpecies list with numbers as options
func printInsectOptions() {
    for (index, insect) in insectSpecies.enumerated() {
        print("\(index + 1). \(insect)")
        }
}


//variable which is the array of species which user has spotted
var totalSpotted: [String] = []


//welcomes the user to the program
print("Welcome to Zealandia Tracker.")
print("")

//asks if they saw a bird or insect if they saw anything
//then puts the input into a constant
print("Did you see a bird, an insect, or neither:")
while isRunning1 {
let inputBirdOrInsectOrNone = readLine()?.lowercased()


//checks if response is bird
if inputBirdOrInsectOrNone == "bird" {
    print("")
    print("Which bird did you see?")
    printBirdOptions()
    let birdInput = readLine() ?? ""
    let birdSeen: Int = Int(birdInput) ?? 0


    isRunning1 = false
}

//checks if response is insect
else if inputBirdOrInsectOrNone == "insect" {
    print("")
    print("Which insect did you see?")
    printInsectOptions()
    let insectInput = readLine() ?? ""
    let insectSeen: Int = Int(insectInput) ?? 0
    
    if insectSeen >= 1 || insectSeen <= 8 {}
    else {print("Please make sure to enter a number between 1 and 8")}
    
    isRunning1 = false
    }

//checks if response is neither and if it is, ends program and says bye
else if inputBirdOrInsectOrNone == "neither" {
    print("")
    print("Lets hope you find some animals next time.")
    print("Good bye!")
    isRunning1 = false
    isRunning2 = false
}

else {print("Please make sure to enter \"Bird\", \"Insect\", or \"Neither\".")}

}


//makes a repeating loop which continues untill user stops seeing any more insects or birds
while isRunning2 {}





//checks if the input is equal to a bird, an insect, or no


//asks if the user saw any more species


//prints what species the user saw and ends the program








    }
}