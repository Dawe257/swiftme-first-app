import Foundation

print("Введите первое значение:")
let firstValue = readLine()
print("Введите второе значение:")
let secondValue = readLine()

let a = try optionalStringToInt(firstValue)
let b = try optionalStringToInt(secondValue)

let result = sum(a, b)
print("Результат сложения: \(result)")
