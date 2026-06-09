// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

//Most constants and variables which will be used within the code are here

///boolean variable for controlling the while loop
var isRunning: Bool = true

///constant for all the different bird species available
let birdSpecies: [String] = [ "Tieke","Kākā", "Takahē", "Hihi", "Kiwi", "Pāteke", "Tūī", "Kererū"]


//makes function for printing birdSpecies list with numbers as options
func printBirdOptions() {
for (index, bird) in birdSpecies.enumerated() {
    print("\(index + 1). \(bird)")
}}



///constant for all the different insect species available
let insectSpecies: [String] = [ "Giant Wētā", "Tree Wētā", "Cave Wētā", "Putoko", "Pūngāwerewere", "Ngaokeoke", "Waemano", "Kapowai"]


//makes function for printing insectSpecies list with numbers as options
func printInsectOptions() {
for (index, insect) in insectSpecies.enumerated() {
    print("\(index + 1). \(insect)")

}

//testing purposes
printBirdOptions()
printInsectOptions()


//note to self: remove numbered lists and make them functions instead


//welcomes the user to the program


//asks what they saw if they saw anything


//asks if the user saw any more species


//prints what species the user saw and ends the program








    }
}
