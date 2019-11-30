import UIKit

var str = "Hello, playground"

// fibonaccy
var a = 0
var b = 1
var c = 0
var o = 20
print(a)
print(b)
while c < o{
    c = a + b
    a = b
    b = c
    if c <= o {
        print(c)
    }else{
        break
    }
}
print(" ")



// Palindrome
var d = 1
var n = 11
let f = (n+1)/2
var e = n / 2


while d <= f {
    print(d)
    d = d + 1
}
while e >= 1 {
    print(e)
    e = e - 1
}

print(" ")


// prime

var m = 2
let g = 11
var j = 2

while j <= g {
    if g % j == 0 {
        if j < g {
            print("tidak prima")
            break
        }else {
            print("prima")
        }
    }
    j = j+1
}

print(" ")

//ganjil genap
var z = 0

while z <= 50 {
    if z % 2 == 0{
        print(z)
    }else {
        print("*")
    }
    z = z + 1
}
        

var flag = true
let number = 13

for i in 2...number/2 {
    if number%1 == 0{
        flag = true
        break
    }
}



