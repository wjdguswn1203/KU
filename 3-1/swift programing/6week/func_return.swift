// 키보드로부터 입력받은 두 수를 인수로 넘겨주면 첫 번째 인수를 두 번째 인수로 나눈 몫과 나머지 모두를 리턴하는 함수를 작성하시오.
// 리턴값을 메인함수에서 받아 화면에 출력하시오.

var a: String?
var b: String?

func na(a: Int, b: Int) -> (Int, Int) {
    return (Int(a/b), Int(a%b)) // 인자를 두 개 받아서 몫과 나머지 리턴
}

if let a = readLine(), let num1 = Int(a) { // 입력 받아서 정수형으로 형변환
    if let b = readLine(), let num2 = Int(b) { // 입력 받아서 정수형으로 변환
        print(na(a: num1, b: num2)) // 함수 na에 돌린 값을 출력
}