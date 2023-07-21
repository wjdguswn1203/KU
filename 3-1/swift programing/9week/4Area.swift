// 다음과 같은 프로퍼티와 초기값을 가지는 원, 사각형, 삼각형 클래스를 각각 정의하고, 인스턴스를 생성한 후, 어떠 ㄴ도형의 면적이 가장 큰 지 판별하는 프로그램을 작성하시오.
import Foundation

class circle {
    var centerX: Double = 10.0, centerY: Double = 10.0
    var r: Double = 5.0
    var size: Double {
        return Double (r*r*3.14)
    }
}

class square {
    var aX = 10, aY = 10,bX = 5, bY = 5
    var size: Double {
        return Double ((aX-bX)*(aY-bY))
    }
}

class triangle {
    var aX = 1, aY = 1,bX = 10, bY = 1, cx = 5, cy = 10
    var size: Double {
        return Double ((bX-aX)*(cY-bY))/2.0
    }
}

let c = circle()
let s = square()
let t = triangle()

print("원의 넓이: \(circle.size)")
print("사각형의 넓이: \(square.size)")
print("삼각형의 넓이: \(triangle.size)")

var maxA = circle.size
var maxB = "원"
if maxA < triangle.size{
    maxA = triangle.size
    maxB = "삼각형"
}
if maxA < square.size {
    maxA = square.size
    maxB = "사각형"
}
print("가장 넓은 도형은 \(maxB)입니다.")