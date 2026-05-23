// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

for days in (15...30) {print (days)}

for leapyear in stride (from:2000, to:2026, by: 4){
print(leapyear)
}
for number in (0...100).reversed() {
if number % 3 == 0{
print("\(number) does not have a remainder")
} else {
    print("\(number) has a remainder of \(number % 3)")
}
}







    }
}
