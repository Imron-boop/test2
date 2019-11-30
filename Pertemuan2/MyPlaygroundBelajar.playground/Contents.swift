import UIKit

var str = "Hello, playground"

let authentication = (name: "twostraws", password: "fr0st1es", ipAddress: "127.0.0.1")

switch authentication {
case ("bilbo", let password, _):
    print("Hello, Bilbo Baggins!")
case ("twostraws", let password, _):
    print("Hello, Paul Hudson: your password was \(password)!")
default:
    print("Who are you?") }

func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "FizzBuzz"
    case (false, false):
        return String(number)
    }
}
print(fizzbuzz(number: 15))


let twostraws = (name: "twostraws", password: "fr0st1es")
let bilbo = (name: "bilbo", password: "bagg1n5")
let taylor = (name: "taylor", password: "fr0st1es")
let users = [twostraws, bilbo, taylor]

for user in users {
    print(user.name)
}
for case ("twostraws", "fr0st1es") in users {
    print("User twostraws has the password fr0st1es")
}
for case (let name, let password) in users {
    print("User \(name) has the password \(password)")
}
for case let (name, password) in users {
    print("User \(name) has the password \(password)")
}
for case let (name, "fr0st1es") in users {
    print("User \(name) has the password \"fr0st1es\"")
}


let name: String? = "twostraws"
let password: String? = "fr0st1es"
switch (name, password) {
case let (.some(name), .some(password)):
    print("Hello, \(name)")
case let (.some(name), .none):
    print("Please enter a password.")
default:
    print("Who are you?")
}


switch (name, password) {
case let (.some(matchedName), .some(matchedPassword)):
    print("Hello, \(matchedName)")
case let (.some(matchedName), .none):
    print("Please enter a password.")
default:
    print("Who are you?")
}

switch (name, password) {
case let (name?, password?):
    print("Hello, \(name)")
case let (username?, nil):
    print("Please enter a password.")
default:
    print("Who are you?")
}


import Foundation
let data: [Any?] = ["Bill", nil, 69, "Ted"]
for case let .some(datum) in data {
    print(datum)
}
for case let datum? in data {
    print(datum)
}


let age = 36
switch age { case 0 ..< 18:
    print("You have the energy and time, but not the money")
case 18 ..< 70:
    print("You have the energy and money, but not the time")
default:
    print("You have the time and money, but not the energy")
}



if case 0 ..< 18 = age {
    print("You have the energy and time, but not the money")
}else if case 18 ..< 70 = age {
    print("You have the energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

if (0 ..< 18).contains(age) {
    print("You have the energy and time, but not the money")
} else if (18 ..< 70).contains(age) {
    print("You have the energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

let user = (name: "twostraws", password: "fr0st1es", age: 36)
switch user {
case let (name, _, 0 ..< 18):
    print("\(name) has the energy and time, but no money")
case let (name, _, 18 ..< 70):
    print("\(name) has the money and energy, but no time")
case let (name, _, _):
    print("\(name) has the time and money, but no energy") }


enum WeatherType {
    case cloudy(coverage: Int)
    case sunny
    case windy
}
let today = WeatherType.cloudy(coverage: 100)
switch today {
case .cloudy:
    print("It's cloudy")
case .windy:
    print("It's windy")
default:
    print("It's sunny")
}

switch today {
case .cloudy(let coverage):
    print("It's cloudy with \(coverage)% coverage")
case .windy:
        print("It's windy")
default:
            print("It's sunny")
    
}



switch today {
case .cloudy(let coverage) where coverage < 100:
    print("It's cloudy with \(coverage)% coverage")
case .cloudy(let coverage) where coverage == 100:
    print("You must live in the UK")
case .windy:
    print("It's windy")
default:
    print("It's sunny")
    
}


