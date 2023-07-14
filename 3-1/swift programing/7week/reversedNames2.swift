// 다음 프로그램을 참조하여 오름차순으로 정렬하고, 정렬된 결과를 출력하는 프로그램을 완성하시오,
// closure expression울 사용해서 개선 단축1

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool
    return s1 < s2
    }) // losure expression울 사용해서 정렬

print(reversedNames)

// closure expression울 사용해서 개선 단축2
// reversedNames = names.sorted(by: {s1,s2 in return s1 > s2})

// closure expression울 사용해서 개선 단축3
// reversedNames = names.sorted(by: {s1,s2 in s1 > s2})

// closure expression울 사용해서 개선 단축4
// reversedNames = names.sorted(by: {$0 > $1})

// closure expression울 사용해서 개선 단축5
// reversedNames = names.sorted(by: >)