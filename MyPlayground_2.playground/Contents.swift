//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


//
let emptyArray = [String]()

let emptyDictionary = [String: Float]()

println(emptyArray)


//

let individualScores = [ 75, 43, 103, 87, 12 ]

var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else {
        teamScore += 1
    }
}

print(teamScore)


//
var optionalString:String? = "hello"

println( optionalString == nil )

//var optionalName:String? = "John Appleseed"
var optionalName:String? = nil
//let temp = nil

var greeting = "hello!"

if let name = optionalName
{
    greeting = "hello,\(name)"
}
else
{
    greeting = "hello, nil"
}


//
let vegetable = "red pepper"

switch vegetable
{
    case "celery":
        println("Add some raisins and make ants on ")
    case "cucumber", "watercress":
        println("That would make a good tea sandwich")
    case let x where x.hasPrefix("red"):
        println("Is it a spicy \(x)")
    default:
        println("Everything tastes good in soup")
}


//
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci":[1, 1, 2, 3, 5, 8],
    "Square":[1, 4, 9, 16, 25],
]

var largest = 0
var temp:String = ""
for( kind, numbers ) in interestingNumbers
{
    for number in numbers
    {
        if number > largest
        {
            largest = number
            temp = kind
        }
    }
}
print(largest)
print(temp)


//
var n = 2
while n < 100
{
    n = n * 2   //4 8 16 32 64 128
}
println(n)

//
var firstForLoop = 0
for i in 0...4{
    firstForLoop += i
}
println(firstForLoop)

var secondLoop = 0
for var i=0; i<4; ++i{
    secondLoop += i
}
println(secondLoop)



//
func greet( name:String, day:String) -> String{
    return "Hello \(name), today is \(day)"
}

greet("Bob", "Tuesday")


//
func calStat(scores:[Int]) -> (min:Int, max:Int, sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores{
        if( score > max ){
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}
let stat = calStat([5, 3, 100, 3, 9])
println(stat.sum)
println(stat.2)

//
func sumof( numbers:Int... ) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumof()
sumof(42, 597, 12)


//    

func returnFif()->Int{
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}
returnFif()

func makeInc() -> (Int->Int){
    func addOne( number:Int ) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeInc()
increment(7)


























