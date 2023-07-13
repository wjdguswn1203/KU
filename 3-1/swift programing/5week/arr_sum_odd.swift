// 키보드로부터 정수 10개를 입력받아서 배열에 저장하시오.
// 배열에서 전체 수의 합계와 홀수의 합계, 짝수의 합계를 각각 구해서 출력하시오.
import Foundation

var arr: [Int] = []
var a: String?
var sum: Int = 0
var aa = 0
var bb = 0

for _ in 0...9 {
    a = readLine()! // 0~9까지 입력 받기
    if let num = a{
        arr.append(Int(num) ?? 0) //입력받은 값 배열에 저장
    }
}
for i in 0...9 {
    sum += arr[i] // 배열 안에 수 합계 구하기
    if arr[i] % 2 == 0 {
        aa += arr[i] // 배열 중에 짝수는 aa에 더하기
    }
    else {
        bb += arr[i] // 배열 중에 홀수는 bb에 더하기
    }
}

print("sum: \(sum), 짝수의 합: \(aa),홀수의 합: \(bb)")