// 인치로 된 제품의 크기를 입력받아서 cm로 출력하는 프로그램을 작성하시오. (1 inch = 2.54 cm)- Hint) 키보드 입력: readLine() 사용
import Foundation

var input = readLine() // 키보드 입력 받기
if let a = input{
    print("제품의 크기(cm): \((Double(a) ?? 0) * 2.54)")
    // 키보드 입력을 받으면 옵셔널 문자열이기에 Double로 변경 -> 변경 시 unwrapping 필요
}