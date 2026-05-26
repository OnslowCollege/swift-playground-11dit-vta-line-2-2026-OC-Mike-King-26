// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
    
var isrunning = true
var count = Int()
print("Welcome to Cinema Tickets.")
while isrunning {


print("")
print("c for child:  $8")
print("a for adult:  $12")
print("s for senior: $10")
print("q for quit")
print("please enter a choice:")

let userInput = readLine()!.lowercased()


switch userInput {

case "c": 
count = count + 8 
print("Child added, your total cost is now $\(count)")

case "a": 
count = count + 12
print("Adult added, your total cost is now $\(count)")

case "s": 
count = count + 10
print("Adult added, your total cost is now $\(count)")

case "q":  
isrunning = false 

default: print("Invalid input, please try again")
}}
print("your final total is $\(count)")
print("Have a good day")

}}
