// 다음 프로그램을 참조하여 오름차순으로 정렬하고, 정렬된 결과를 출력하는 프로그램을 완성하시오,

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1:String, _ s2: String) -> Bool {
    return s1 < s2 // 두 인자를 String으로 받은 다음 두 수를 비교 후에 Bool형으로 리턴
}

var reversedNames = names.sorted(by: backward) // backward 함수대로 정렬

print(reversedNames)