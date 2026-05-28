// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

var invitees: [String] = []
var isrunning = true

print("Welcome to the party invitee list creator")
print("")

while isrunning {

print("Enter A if you would like to invite more people to the party.")
print("Enter R if you would like to remove invitees.")
print("Enter F if you are done with the invitees list.")
print("Enter P if you would like to check who is in the list")

let userinput = readLine()!
switch userinput {


case "A": 
print("Please enter the name of the person you would like to invite")
let userinputadd = readLine()!
invitees.append ("\(userinputadd)")


case "R":
print("Please enter the name of the person you would like to remove")
let userinputremove = readLine()!
if let index = invitees.firstIndex(of: "\(userinputremove)") {
invitees.remove(at: index)}
else {print("No person of that name exists, please make sure to enter their exact name")}


case "P":
for people in invitees {
print("Here is the list of invitees")
print("\(people)")}


case "F":
for invitee in invitees {
print("Here is your final list")
print("\(invitee)")}
isrunning = false


default: print("Invalid input, please enter a valit input next time.")
print("")
}

}
print("Party well!")



    }
}
