// 문자열에서 공백 문자를 모두 제거하는 프로그램을 작성하시오. 프로그램의 실행 결과는 다음과 같아야 한다.
import Foundation

print("문자열을 입력하세요: ")

var a: String = readLine()! // 문자열 저장
var count = 0 // 공백이 있는 자리를 알려줄 변수

for index in a {
    if index == " "{ // 공백을 만나면 제거
        a.remove(at: a.index(a.startIndex,offsetBy:count))
    }
    else{
        count += 1 // 공백이 아닐 시 카운트 +1
    }
}

print("변경 후 문자열: ")
print(a)