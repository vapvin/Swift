
// Swift Flow Control

import UIKit
import Foundation
//
//// While
//
//var i = 0;
//
//print("\n -------While-------- \n")
//while i < 10 {
//    print(i + 1)
////    if i==5{
////        break
////    }
//    i += 1
//}
//
//// repeat looklike other language do ~ while case
//print("\n -------Repeat------- \n")
//i = 0
//repeat {
//    print(i)
//    i += 1
//} while i < 10


let closeRange = 0...10
let halfCloseRange = 0..<10

var sum = 0
for i in closeRange{
    print("----> \(i)")
    sum += i
}

print("total sum: \(sum)")

var sinValue: CGFloat = 0

for i in closeRange{
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

for i in closeRange{
    if i % 2 == 0 && i != 0{
        print("value: \(i)")
    }
}


for i in closeRange where i % 2 == 0 && i != 0 {
    print("This syntax Asome: \(i)")
}
