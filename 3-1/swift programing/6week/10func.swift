// 인자도 없고, 리턴값도 없이 호출하면 "hello" 문자열을 화면에 출력하는 함수를 정의하고, 이를 10번 호출하는 프로그램을 작성하시오.
import Foundation

func hii() {
    print("hello") //함수 지정
}

for i in 0..< 10 {
    hii() //함수 호출
}