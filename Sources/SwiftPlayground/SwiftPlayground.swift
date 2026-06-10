// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

//Some constants and variables which will be used within the code are here

///boolean variables for controlling whether the while loops are on or off
var isRunning1: Bool = true
var isRunning2: Bool = true

///constant for all the different bird species available
let birdSpecies: [String] = [ "Tieke","Kākā", "Takahē", "Hihi", "Kiwi", "Pāteke", "Tūī", "Kererū"]

//makes function for printing birdSpecies list with numbers as options
func printBirdOptions() {
    for (index, bird) in birdSpecies.enumerated() {
        print("\(index + 1). \(bird)")
        }
}


///constant for all the different insect species available
let insectSpecies: [String] = [ "Giant Wētā", "Tree Wētā", "Cave Wētā", "Putoko", "Pūngāwerewere", "Ngaokeoke", "Waemano", "Kapowai"]

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
print("Did you see a bird, insect:")
while isRunning1 {
let userInput = readLine()?.lowercased()

if userInput == "bird" {}

}





//makes a repeating loop which continues untill user stops seeing any more insects or birds


//checks if the input is equal to a bird, an insect, or no


//asks if the user saw any more species


//prints what species the user saw and ends the program








    }
}