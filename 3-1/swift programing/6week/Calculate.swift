// 키보드로부터 입력받은 두 수를 인수로 넘겨주면 두 수의 사칙연산 결과를 출력하면 Ca;culate함수를 작성하시오.
// 단 +,-.*,/을 수행하는 네 개의 함수를 Calculate함수의 내포함수로 각각 작성하시오.

import Foundation

var num1 = Int(readLine()!)! // 입력 받은 후 정수형으로 형변환
var num2 = Int(readLine()!)! // 입력 받은 후 정수형으로 형변환

func Calculate(num1: Int, num2: Int) -> String {  // 계산기 함수 -> 리턴 값은 String
    func add(n1:Int, n2:Int) -> Int { //더하기
        return (n1 + n2)
    }
    func sub(n1:Int, n2:Int) -> Int { //빼기
        return (n1 - n2)
    }
    func mul(n1:Int, n2:Int) -> Int { //곱하기
            return (n1 * n2)
    }
    func div(n1:Int, n2:Int) -> Int { //나누기
                return (n1 / n2)
    }
    // 전체 결과
    return "num1+num2: \(add(n1: num1, n2: num2)), num1-num2: \(sub(n1: num1, n2: num2)), num1*num2: \(mul(n1: num1, n2: num2)), num1/num2: \(div(n1: num1, n2: num2))"
}

print(Calculate(num1: num1, num2: num2)) //출력