// 3개의 정수를 입력 받아서 합계와 평균, 최대값과 최소값을 구해서 출력하는 프로그램을 작성하시오. 단, 평균은 소수점 이하 두 자리까지 구하도록 한다.
import Foundation

let input1 = readLine()!.split(separator: " ").map {
    Int(String($0))! // 띄어쓰기마다 나눠서 읽어오기
 }

 var sum = 0

 for i in input1 {
    sum = sum + Int(String(i))! // 변수에 있는 값들 하나씩 읽어 합산 구하기
 }

let a = input1.count // 변수 안에 값 갯수 저장

print(sum)
print("평균: ")

let p = Double(sum) / Double(a) // 평균 구하기

print(String(format: "%.2f", p)) // 소수정 두 자리까지 format을 주기
print("최솟값: \(input1.min()!) 최댓값: \(input1.max()!)")