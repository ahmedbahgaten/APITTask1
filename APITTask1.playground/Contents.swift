import UIKit
func numberOfRotation (word:String) {
    if word.count > 10 || word.isEmpty {
        print("Wrong Entry!")
    }
    else {
    let arrayOfChar:[Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    let stringLiteral:String = word
    let characters = Array(stringLiteral)
    var counter = 0
    var i = 0
    var j = 0
    for letter in characters {
        for _ in arrayOfChar {
            if letter == arrayOfChar[i] {
                let index = i
                let  wheelCursor = j
                j = i
                var step = abs(index-wheelCursor)
                if step > arrayOfChar.count / 2 {
                    step = 26 - step
                }
                counter += step
            }
            i += 1
        }
        i = 0
    }
    print("The minimum number of rotations to write the string \(word) is \(counter) times")
}
}
numberOfRotation(word: "ahmed")
