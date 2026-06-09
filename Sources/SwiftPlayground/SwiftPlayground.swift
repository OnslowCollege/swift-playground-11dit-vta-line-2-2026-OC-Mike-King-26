// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

//Most constants and variables which will be used within the code

///boolean variable for controlling the while loop
var isRunning: Bool = true

///constant for all the different bird species available
let birdSpecies: [String] = [ "Tieke","Kākā", "Takahē", "Hihi", "Kiwi", "Pāteke", "Tūī", "Kererū"]

///constant for all the different insect species available
let insectSpecies: [String] = [ "Giant Wētā", "Tree Wētā", "Cave Wētā", "Putoko", "Pūngāwerewere", "Ngaokeoke", "Waemano", "Kapowai"]




//makes bird species list with numbers
var numberedBirdSpecies: [String] = []
for (index, bird) in birdSpecies.enumerated() {
    numberedBirdSpecies.append("\(index + 1). \(bird)")
}

//makes bird species list with numbers
var numberedInsectSpecies: [String] = []
for (index, insect) in insectSpecies.enumerated() {
    numberedInsectSpecies.append("\(index + 1). \(insect)")
}
//testing purposes (still need for loops for all the lists)
print("\(birdSpecies), \(insectSpecies), \(numberedBirdSpecies), \(numberedInsectSpecies)")
//note to self: remove numbered lists and make them functions instead

//welcomes the user to the program


//asks what they saw if they saw anything


//asks if the user saw any more species


//prints what species the user saw and ends the program










    }
}
