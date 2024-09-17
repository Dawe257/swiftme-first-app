import Foundation

func sum(_ a: Int, _ b: Int) -> Int {
    a + b
}

func optionalStringToInt(_ str: String?) throws -> Int {
    guard let str else { throw MyError.valueIsMissing("Отсутствует значение") }
    return try stringToInt(str)
}

func stringToInt(_ str: String) throws -> Int {
    guard let int = Int(str) else { throw MyError.notANumberError("\(str) is not a number") }
    return int
}

enum MyError: Error {
    case notANumberError(String)
    case valueIsMissing(String)
}
