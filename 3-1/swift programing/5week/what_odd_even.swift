// 정수를 입력 받아 짝수인지 홀수인지를 출력하느 ㄴ프로그램을 Switch 구문을 이용하여 작성하시오.

import Foundation

var b = Int(readLine()!)! //옵셔널 풀어서 int형으로 변환

switch b {
    case 0: // b == 0 일때
    print("홀수도 짝수도 아니다.")
    default: // b != 0 일때
        if(b%2 == 0) { // 2로 나눌 때 나머지가 없으면서 0이 아닌 수
        print("짝수입니다.")
        }
        else {
        print("홀수입니다.") // 나머지가 남으면서 0이 아닌 수
        }
}

