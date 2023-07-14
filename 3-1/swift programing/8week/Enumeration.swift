// 위의 프로그램을 참조하여 두 수와 연산 기호를 입력 받고 사칙연산을 Enumeration과 Switch를 매치하는 프로그램을 작성하시오.
import Foundation

print("첫번째 숫자")
var num1 = Int(readLine()!)!
print("두번째 숫자")
var num2 = Int(readLine()!)!
print("연산자")
var a = readLine()!

enum Switch: String { // 기호 저장
    case plus = "+"
    case n = "/"
    case minus = "-"
    case mul = "*"
}

if let b = Switch(rawValue: a) { // 사칙연산
    switch b {
        case .plus:
            print("\(num1) + \(num2) = \(num1+num2)")
        case .n:
            if (num1 == 0 || num2 == 0){
                print("0으로 나눌 수 없음")
            }
            else {
                print("\(num1) / \(num2) = \(num1/num2)")
            }
        case .minus:
            print("\(num1) - \(num2) = \(num1-num2)")
        case .mul:
            print("\(num1) * \(num2) = \(num1*num2)")
        default:
            print("연산자가 아니다.")
    }
}
else {
    print("Not num")
}

