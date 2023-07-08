// 문자열을 입력 받아 각 단어의 첫 글자를 대문자로 변경하는 프로그램을 작성하시오.
import Foundation

var inputData: String = readLine()!
var inputData1 = inputData.split(separator: " ") // 띄어쓰기를 기준으로 나눠서 저장

for a in inputData1 {
    print(a[a.startIndex].uppercased() , terminator: "") // 첫번째 문자를 대문자로 변환
    print(a.dropFirst(1), terminator: " ") // 원래 소문자 첫글자를 버리기
}