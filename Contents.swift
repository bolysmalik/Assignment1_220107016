import UIKit
import Foundation

func calculateAmount(years: Int) {
    var currentAmount: Double = 500000
    for year in 1...years {
        currentAmount = currentAmount * 1.11
    }
    
    print("The deposit amount after \(years) years will increase by \(currentAmount - 500000) and amount to \(currentAmount) tenge. \n")
}
calculateAmount(years: 5)

func getEvenNumbers(numbers: [Int]) -> [Int] {
    var evenNumbers: [Int] = []
    for number in numbers {
        if number % 2 != 0 {
            continue
        }
        evenNumbers.append(number)
    }
    return evenNumbers
}
let numbers: [Int] = [1,2,3,4,5,6,7,8,9,10]
print("\(getEvenNumbers(numbers: numbers))\n")

var iterations = 0

for _ in 1...10 {
    iterations += 1
    let randomNumber = Int.random(in: 1...10)
    
    if randomNumber == 5 {
        print("It took \(iterations) iterations to get the number 5.\n")
        break
    }
}

func findDays() {
    let maxMeters = 10
    var currentDay = 0
    var currentMeter = 0
    
    while currentMeter < maxMeters {
        currentDay += 1
        currentMeter += 2
        
        if currentMeter >= maxMeters {
            print("It took \(currentDay) days to reach 10 meters\n")
            break
        }
        currentMeter -= 1
    }
}
findDays()

let gameResults: [String: [String]] = [
    "Berik Akhmetov": ["3:6", "5:5", "N/A"],
    "Avangard": ["2:1"],
    "Ak Barys": ["3:3", "1:2"]
]

for (opponent, results) in gameResults {
    for result in results {
        print("Game against \(opponent) - \(result)")
    }
}

func getSum(of numbers: [Int]) -> Int {
    return numbers.map { $0 }.reduce(1, +)
}

let numberArray: [Int] = [1,2,3,4,5,6,7,8,9,10]
print("\n\(getSum(of: numberArray))")

func isEvenNumber(_ number: Int) -> Bool {
    number % 2 == 0
}

func isDivisibleByThree(_ number: Int) -> Bool {
    number % 3 == 0
}

func getRangeArray(_ x: Int, _ y: Int) -> [Int] {
    if x >= y {
        return []
    }
    var numbers: [Int] = []
    for number in x...y {
        numbers.append(number)
    }
    return numbers
}

print("\(getRangeArray(1, 100))\n")

func filterEvenNumbers(numbers: [Int]) -> [Int] {
    var result: [Int] = []
    for number in numbers {
        if !isEvenNumber(number) {
            result.append(number)
        }
    }
    return result
}

func filterNumbersDividesByThree(numbers: [Int]) -> [Int] {
    var result: [Int] = []
    for number in numbers {
        if !isDivisibleByThree(number) {
            result.append(number)
        }
    }
    return result
}

print("\(filterEvenNumbers(numbers: getRangeArray(1, 100)))\n")
print("\(filterNumbersDividesByThree(numbers: getRangeArray(1, 100)))\n")
