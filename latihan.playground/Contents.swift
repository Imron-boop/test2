////2
//func diff_51 (n: Int) -> Int {
//    if n > 51 {
//        return (51 - n) * 2
//    }else{
//        return (51 - n)
//    }
//}
//diff_51(n: 3)
//
////3
//func acceptInt(a: Int, b: Int) -> Bool {
//    if a == 20{
//        return true
//    }else if b == 20{
//        return true
//    }else if a + b == 20{
//        return true
//    }else{
//        return false
//    }
//}
//
//acceptInt(a: 2, b: 1)
//
//
////4
//func isNegative(c: Int, d: Int) -> Bool{
//    if c > 0 && d > 0 {
//        return false
//    }else{
//        return true
//    }
//}
//isNegative(c: -1, d: -1)
//isNegative(c: -1, d: 1)
//isNegative(c: 1, d: -1)
//isNegative(c: 1, d: 1)
//
////5
//func addIs(word: String) -> String{
//    if word.hasPrefix("Is") {
//        return word
//    }else {
//        return "Is \(word)"
//    }
//}
//addIs(word: "Is imron")
//
////6
//func removeChar(word1: String, n: Int) -> String{
//    let count = word1.count
//    let index = word1.index(word1.startIndex, offsetBy: n)
//    var newWord1 = word1
//    if count > 0{
//        newWord1.remove(at: index)
//    }
//    return newWord1
//}
//removeChar(word1: "jbnfhgctc", n: 3)
//
////7
//func first_last(str1: String) -> String {
//
//    var result = str1
//    let first_char = result.remove(at: result.startIndex)
//    print(result)
//    let findLast = result.index(before: result.endIndex)
//    let last_char = result.remove(at: findLast)
//    print(result)
//
//    result.append(first_char)
//    result.insert(last_char, at: (result.startIndex))
//
//    return result
//}
//print(first_last(str1: "Swift"))
//
//
////8
//func addLast(str2: String) -> String{
//    var result2 = str2
//    let lastChar = str2.last
//    print(lastChar)
//
//    return "\(lastChar!)\(str2)\(lastChar!)"
//}
//print(addLast(str2: "imton"))
//
////9
//func multiple(a: Int) -> String{
//    if a%3 == 0 {
//        return "\(a) is a multiple of 3"
//    }else if a%5 == 0 {
//        return "\(a) is a multiple of 5"
//    }else{
//        return "\(a) is not multiple by 3 or 5"
//    }
//}
//multiple(a: 10)
//
////10
//func frontBackAdd2(str3: String) -> String {
//    let newInput = str3
//    let first2Values = newInput.prefix(2)
//    let result = first2Values + newInput + first2Values
//    return String(result)
//}
//frontBackAdd2(str3: "imron")
//
//
////11
//func startIs(str: String) -> Bool{
//    let input = str
//    let first2Value = input.prefix(2)
//    if first2Value == "Is" {
//        return true
//    }else{
//        return false
//    }
//}
//startIs(str: "Islam")
//
//
////12
//func isInRange(a: Int, b: Int)-> Bool{
//    if a >= 10 && a <= 30 {
//        return true
//    }else if b >= 10 && b <= 30{
//        return true
//    }else{
//        return false
//    }
//}
//isInRange(a: 3, b: 3)
//
//
////13
//func fixStart(str: String) -> Bool{
//    var input = str
//    let index = str.startIndex
//    let noF = input.remove(at: index)
//
//    if input.prefix(2) == "ix"{
//        return true
//    }else{
//        return false
//    }
//}
//fixStart(str: "fix imorn")
//fixStart(str: "2ixnnnenrn")
//fixStart(str: "hdhdgdgd")
//
//
////14
//func largestNumber(a: Int, b: Int, c: Int) -> Int{
//    if a > b && a > c {
//        return a
//    }else if b > a && b > c{
//        return b
//    }else if c > a && c > b{
//        return c
//    }else{
//        return 0
//    }
//}
//largestNumber(a: 1, b: 2, c: 3)
//
//func largestNumber1(a: Int, b: Int, c: Int) -> Int{
//    var set = [0]
//    set.remove(at: 0)
//    set.append(a)
//    set.append(b)
//    set.append(c)
//    let largest = set.max()!
//
//    return largest
//}
//largestNumber1(a: 1, b: 3, c: 3)
//
//
////15
//func nearest10(a: Int, b: Int) -> Int{
//    if a <= 10 && b <= 10 {
//        if 10 - a < 10 - b{
//            return a
//        }else if 10 - b < 10 - a{
//            return b
//        }
//    }else if a >= 10 && b >= 10 {
//        if 10 - a < 10 - b{
//            return b
//        }else if 10 - b < 10 - a{
//            return a
//        }
//    }else if a == b{
//        return 0
//    }
//    return 0
//}
//
//nearest10(a: 3, b: -3)
//
//
////16
//func inRange(a: Int, b: Int) -> String{
//    if a > 20 && a < 30 && b > 20 && b < 30{
//        return "in range 20...30"
//    }else if a > 30 && a < 40 && b > 30 && b < 40{
//        return "in range 30...40"
//    }
//    return "out of range"
//}
//inRange(a: 3, b: 2)
//
//
////17
//func largesInt(a: Int, b: Int) -> String{
//    if a >= 0 && b >= 0 {
//        if a > 20 && a < 30 && b > 20 && b < 30{
//            if a > b {
//                return "\(a)"
//            }else if b > a{
//                return "\(b)"
//            }
//        }else {
//            return "0"
//        }
//    }
//    return "input a positive number"
//}
//
//largesInt(a: 23, b: -4)
//
//
////18
//func sameLast(a: Int, b: Int) -> Bool{
//    if a % 10 == b % 10 {
//        return true
//    }
//    return false
//}
//sameLast(a: 11, b: 32)
//
//
////19
//func upCaseLast(input: String) -> String{
//    if input.count < 3
//    {
//        return input.lowercased()
//    }
//    else
//    {
//        var newInput = input
//        var str1: String = ""
//        let lastThree = newInput.suffix(3)
//        newInput.removeLast(3)
//        let lastThreeUpper = lastThree.uppercased()
//        str1.append(contentsOf: newInput)
//        str1.append(String(lastThree).uppercased())
//        return str1
//    }
//}
//upCaseLast(input: "imronal")
//
//
////20
//func isA (input: String) -> Bool{
//    var str = input
//    let count = input.count
//    var i = 1
//    while i <= count {
//        if str.first == "a" {
//            str.remove(at: str.firstIndex(of: str.first!)!)
//            if str.first == "a" {
//                return true
//            }
//        }else{
//           str.remove(at: str.firstIndex(of: str.first!)!)
//        }
//        print(str)
//        i = i + 1
//    }
//    return false
//}
//isA(input: "iiiiiiimaaron")
//
//
////21
//var output = ""
//var input = "abcdefghi"
//print(input)
//for (index, input) in input.enumerated() {
//    if index % 2 == 0{
//        output.append(input)
//    }
//}
//print(output)
//
//
////22
//print(" ")
//
//
//func count7 (array: [Int]) -> Int{
//    var count = 0
//    for num in array {
//        if num == 7 {
//            count += 1
//        }
//    }
//    return count
//}
//count7(array: [1,2,3,7,4,5,6,7,8,9])
//
//
////23
//func isThere7(array: [Int]) -> Bool{
//    if array.prefix(4).contains(7){
//        return true
//    }
//    return false
//}
//isThere7(array: [1,2,3,4,5,5,7,6,6])
//
//
////24
//func testNum(array: [Int]) -> Bool{
//    if array.contains(0) && array.contains(1) && array.contains(2){
//        return true
//    }
//    return false
//}
//testNum(array: [1,2,3,4,5,6,7])
//
//func array012(input: [Int]) -> Bool {
//    for (index, number) in input.enumerated() {
//        let third_Index = index + 2
//        let second_Index = index + 1
//
//        if second_Index < input.endIndex && number == 1 && input[second_Index] == 2 && input[third_Index] == 3 {
//            return true
//        }
//    }
//    return false
//}
//
//
////25
//
//
////26
//func stringEven(input: String) -> String{
//    var str = input
//    var hasil = ""
//    for (index, str) in str.enumerated(){
//        if index % 2 == 0{
//            hasil.append(str)
//        }
//    }
//    return hasil
//}
//stringEven(input: "klmnop")


//27
let x = 123.6
let y = x.rounded()
print(y)
