

let input:String = ""

func greeting(input: String) -> String{
    return "greetings, " + input + "!"
}
print(greeting(input: "andika"))

func goodbye(input: String) -> String{
    return "goodbye, " + input + "!"
}
print(goodbye(input: "andika"))

//1. function without parameter
func sayGreating() -> String {
    return "hello word"
}

//2. function with multiple parameter
func greating1 (input: String, alreadyGreet: Bool) -> String {
    if alreadyGreet{
        return goodbye(input: input)
    }else{
        return greeting(input: input)
    }
}

print(greating1(input: "imron", alreadyGreet: true))


//3. function with multiple return value
func myFunction() -> (value1: Int, value2: String) {
    return (1 , "test")
}
print(myFunction())


func minMax(array:[Int]) -> (min: Int, max: Int){
    var currMin = array[0]
    var cuurMax = array[0]
    for value in array[1..<array.count] {
        if value < currMin {
            currMin = value
        }else if value > cuurMax{
            cuurMax = value
        }
    }
    return (currMin, cuurMax)
}

let himpunanA = minMax(array: [8, -3, 12, 109])
print("\(himpunanA.min), \(himpunanA.max) " )


//4. function without return value
func great(input: String) {
    print("hello \(input)")
}

great(input: "andika")










// task
func segitiga(alas: Double, tinggi: Double) -> Double {
    let luasSegitiga = (alas * tinggi) / 2
    return luasSegitiga
}

func persegiPanjang(panjang: Double, lebar: Double) -> Double {
    let luasPersegiPanjang = panjang * lebar
    return luasPersegiPanjang
}

func lingkaran(r: Double) -> Double {
    let luasLingkaran = (22/7) * r * r
    return luasLingkaran
}

lingkaran(r: 7)
persegiPanjang(panjang: 5, lebar: 10)
segitiga(alas: 1, tinggi: 5)



enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return "\(self.rawValue)"
        }
    }
}
let ace = Rank.ace
let aceRaw = ace.rawValue
let eight = Rank.eight

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}


struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return " The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let aceOfHearts = Card(rank: ace, suit: .hearts)
let aOHDesc = aceOfHearts.simpleDescription()
print(aceOfHearts)
print(aOHDesc)


//protocol = blueprint method, propertice, func
// class, struck, enum

protocol ExampleProtocol {
    var simpleDesc: String {get}
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDesc: String = "very simple class"
    var anotherProperty: Int = 747484
    
    func adjust() {
        simpleDesc += "Now 100% adjusted"
    }
}
var a = SimpleClass()
a.adjust()
let aDesc = a.simpleDesc


struct SimpleStructure: ExampleProtocol {
    var simpleDesc: String = "very simple structure"
    mutating func adjust() {
        simpleDesc += "(adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDesc = b.simpleDesc


//extention
extension Int{
    var kelipatan2: Int{return self*2}
    var kelipatan3: Int{return self*3}
}
var hasilK = 82.kelipatan2

extension Double{
    var km: Double{return self * 1000.0}
    var m: Double{return self}
    var cm: Double{return self / 100.0}
    var mm: Double{return self / 1000.0}
}


//error
enum printerError: Error{
    case outOfPaper
    case noToner
    case onFire
}

//1
func send(job: Int, toPrinter PrinterName: String) throws -> String{
    if PrinterName == "never has toner"{
        throw printerError.noToner
    }
    return "job sent"
}

//2
do {
    let printerResponse = try send(job: 1010, toPrinter: "cannon")
    print(printerResponse)
} catch {
    print(error)
}

//2.1
do {
    let printerResponse = try send(job: 1400, toPrinter: "fuji")
    print(printerResponse)
} catch printerError.onFire{
    print("kebakar")
} catch let printerError as printerError {
    print("printer error: \(printerError)")
} catch {
    print(error)
}

let printerSuccess = try? send(job: 2000, toPrinter: "boss")
let printerFailure = try? send(job: 2000, toPrinter: "never has toner")
print(printerFailure)


//
