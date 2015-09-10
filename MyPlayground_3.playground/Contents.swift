//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//
func sayHello( personName:String ) -> String {
    return "hello," + personName
}

println(sayHello("Anna"))


//
func halfLength(start:Int, end:Int) -> Int {
    return end - start
}

println(halfLength(1,10))

//
func sayWorld() -> String {
    return "World"
}

println(sayWorld())

//
func sayBye(personName:String) -> (){
    println("Goodbye,\(personName)")
}

sayBye("quan")

//
func printAndCount(stringToPrint: String) -> Int {
    println(stringToPrint)
    return count(stringToPrint)
}

printAndCount("hello")

//
func cout(string : String) -> (vowels:Int, consonants:Int, others:Int) {
    var vowels = 0, consonants = 0, others = 0
    for character in string {
        switch String(character).lowercaseString{
        case "a", "e","i","o","u":
            ++vowels
        default:
            ++others
        }
    }
    return( vowels, consonants, others)
}

let total = cout("some arbitrary string")
println("vowels = \(total.vowels) and others =  \(total.others)")

//
func join(string s1:String="test", toString s2:String = "", withJoiner joiner:String = "") -> String {
    return s1 + joiner + s2
}

//join(string :"hello", toString:"world", withJoiner:",")
join(toString:"world")



//
func conChar( #string:String, #char:Character ) -> Bool {
    for character in string {
        if character == char {
                return true
            }
    }
    return false
}

let contains = conChar(string: "ardvark", char: "3")

//
func joinT( s3:String="test", s4:String, joiner:String="") -> String {
    return s3 + joiner + s4
}

joinT("double")

//
func arithMean( numbers:Double... ) -> Double {
    var total:Double = 0
    for number in numbers {
        total += number
    }
    return total / Double( numbers.count )
}

arithMean(1,2,3,4,6)
arithMean(3,8,19)


//
func alignRight( var string : String = "test", pad:Character, totalLength:Int = 20 ) -> String {
    let amountToPad = totalLength - count(string)
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}

let originalString = "hello"
let paddedString = alignRight( "-" )

//
func swapInts( inout a:Int, inout b:Int ){
    let temporary = a
    a = b
    b = temporary
}

var someInt = 3
var anotherInt = 107
swapInts(&someInt, &anotherInt)

println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


//
func addTow(a:Int, b:Int) -> Int {
    return a+b
}

func multiplyTwo(a:Int, b:Int) -> Int {
    return a*b
}

func printHello() {
    println("hello")
}

var mathFunction = addTow

println("result:\(mathFunction(2,3))")

mathFunction = multiplyTwo

println("result:\(mathFunction(2,3))")


//
func printResult(mathFunction:(Int, Int) -> Int, a:Int, b:Int) {
    println("result:\(mathFunction(a,b))")
}

printResult(addTow, 3, 5)

//
func stepF(input:Int) -> Int {
    return input + 1
}

func stepB(input:Int) -> Int {
    return input - 1
}

func chooseStep( backwards:Bool ) -> (Int) -> Int {
    return backwards ? stepB : stepF
}

var current = 3

let moveZero = chooseStep(current > 0)

while current != 0 {
    println("\(current)")
    current = moveZero(current)
}
println("zero!")

//
func choose( backwards:Bool ) -> (Int) -> Int {
    func stepFor(input:Int) -> Int { return input + 1 }
    func stepBack(input:Int) -> Int { return input - 1 }
    return backwards ? stepBack : stepFor
}

var currentValue = -4
let moveTozero =  choose(currentValue > 0)
while currentValue != 0 {
    println("\(currentValue)")
    currentValue = moveTozero( currentValue )
}

println("zero")







































