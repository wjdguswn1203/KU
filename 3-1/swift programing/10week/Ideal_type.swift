// '사람' 클래스를 상속받아 '남자'를 나타내는 클래스와 '여자'를 나타내는 클래스를 각각 정의하시오.
// 남자와 여자에 해당하는 각각의 프라퍼티를 3개 이상 정의하고, 각각의 이상향에 대한 정보를 저장할 수 있는 프라퍼티를 추가하시오.
// 그리고, 상속받은 '생각하다'라는 메소드를 각각의 이상향에 대해 판단하는 내용으로 override하여 수정하시오.

//  ‘남자’ 클래스의 인스턴스를 5명, ‘여자’ 클래스의 인스턴스를 각각 5명 생성해서 이들을 적절한
//   collection 클래스에 저장하고, 이들의 이상향을 검사하는 프로그램을 작성하시오. 이상향은 한 사람의
//   입장에서 5명의 이성에 대해서 ‘생각하다’ 메소드를 통해 가장 많은 점수를 나타나는 이성을 선정하고,
//   이것이 서로 일치할 경우 커플로 선정한다.

import Foundation

class person {

    var age = 0
    var sex = ""
    func think(w:Int, t: Int, a: String) {
    }

}
class Male: person {

    var name: String
    var weight: Int
    var tall: Int
    var army: String
    var fweight: Int
    var ftall: Int
    var fglasses: String
    var sum: Int
    var n: String

    init(name: String, weight: Int, tall: Int, army: String, fweight: Int, ftall: Int, fglasses: String,
    sum: Int, n: String) {
    self.name = name
    self.weight = weight
    self.tall = tall
    self.army = army
    self.fweight = fweight
    self.ftall = ftall
    self.fglasses = fglasses
    self.sum = sum
    self.n = n
    }

    override func think(w:Int, t: Int, a: String) {
    if fweight == w { sum += 1 }
    if ftall == t { sum += 1 }
    if fglasses == a { sum += 1 }
    }

}
class Female: person {

    var name: String
    var weight: Int
    var tall: Int
    var glasses: String
    var mweight: Int
    var mtall: Int
    var marmy: String
    var sum: Int
    var n: String

    init(name: String, weight: Int, tall: Int, glasses: String, mweight: Int, mtall: Int, marmy:
    String, sum: Int, n: String) {
    self.name = name
    self.weight = weight
    self.tall = tall
    self.glasses = glasses
    self.mweight = mweight
    self.mtall = mtall
    self.marmy = marmy
    self.sum = sum
    self.n = n
    }

    override func think(w:Int, t: Int, a: String) {
        if mweight == w { sum += 1 }
        if mtall == t { sum += 1 }
        if marmy == a { sum += 1 }
    }
}

var male = [Male(name: "홍길동", weight: 70, tall: 170, army : "N", fweight : 50, ftall :
170, fglasses : "N", sum: 0, n: ""),
Male(name: "이순신", weight: 75, tall: 175, army : "Y", fweight : 60, ftall :
165, fglasses : "N", sum: 0, n: ""),
Male(name: "을지문덕", weight: 80, tall: 180, army : "Y", fweight : 45, ftall :
155, fglasses : "N", sum: 0, n: ""),
Male(name: "세종대왕", weight: 85, tall: 183, army : "Y", fweight : 50, ftall :
170, fglasses : "Y", sum: 0, n: ""),
Male(name: "궁예", weight: 90, tall: 185, army : "Y", fweight : 65, ftall : 175,
fglasses : "N", sum: 0, n: "")]
var female = [Female(name: "갑순이",weight: 50, tall: 170, glasses: "N", mweight: 60, mtall:
170, marmy: "Y", sum: 0, n: ""),
Female(name: "신사임당", weight: 60, tall: 165, glasses: "Y", mweight: 75, mtall:
175, marmy: "Y", sum: 0, n: ""),
Female(name: "퀴리부인", weight: 45, tall: 155, glasses: "N", mweight: 90, mtall:
180, marmy: "Y", sum: 0, n: ""),
Female(name: "장희빈", weight: 50, tall: 170, glasses: "Y", mweight: 85, mtall:
180, marmy: "Y", sum: 0, n: ""),
Female(name: "유관순",weight: 65, tall: 175, glasses: "N", mweight: 80, mtall:
185,marmy: "N", sum: 0, n: "")]

var max = 0

for i in 0...4 {
    for j in 0...4 {

        female[i].think(w:male[j].fweight, t: male[j].ftall, a: male[j].fglasses)

        if female[i].sum > max {
            max = female[i].sum
            female[i].n = male[j].name
        }

        female[i].sum = 0
    }
    max = 0
}

for i in 0...4 {
    for j in 0...4 {

        male[i].think(w:female[j].mweight, t: female[j].mtall, a: male[j].army)

        if male[i].sum > max {
            max = male[i].sum
            male[i].n = female[j].name
        }

        male[i].sum = 0
    }
    max = 0
}

for j in 0...4 {
    for i in 0...4 {
        if ( female[j].name == male[i].n ) && ( female[j].n == male[i].name ){
            print("커플탄생: (\(male[i].name), \(female[j].name))")
        }
    }
    max = 0
}