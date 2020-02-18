import XCTest
@testable import StringFormatting

final class StringFormattingTests: XCTestCase {
    
    func test_repeatedByNeg() {
        let x = "\(Int.random(in: 0 ... 100))"
        let res = x.repeated(Int.random(in: -5 ... -1))
        XCTAssertTrue(res == "")
    }
    
    func test_repeatedBy0() {
        let x = "\(Int.random(in: 0 ... 100))"
        let res = x.repeated(0)
        XCTAssertTrue(res == "")
    }
    
    func test_repeated() {
        let x = "ABCD"
        let n = 5
        let exp = "ABCDABCDABCDABCDABCD"
        let res = x.repeated(n)
        XCTAssertTrue(res == exp)
    }
    
    func test_prefixedBy() {
        let x = "ABCD"
        let p = "123"
        let n = 5
        let exp = "123123123123123ABCD"
        let res = x.prefixed(by: p, repeated: n)
        XCTAssertTrue(res == exp)
    }
    
    func test_suffixedBy() {
        let x = "ABCD"
        let s = "123"
        let n = 5
        let exp = "ABCD123123123123123"
        let res = x.suffixed(by: s, repeated: n)
        XCTAssertTrue(res == exp)
    }
    
    func test_formatNotEnoughOrJustEnoughSpace() {
        let x = "\(Int.random(in: 1_000 ... 10_000))"
        let maxLength = x.count - Int.random(in: 0 ... 3)
        let p = Character("\(Int.random(in: 0 ... 9))")
        let s = Character("\(Int.random(in: 0 ... 9))")
        for alignment in [String.Alignment.left, String.Alignment.center, String.Alignment.right] {
            let exp = x
            let res = x.formatted(width: maxLength,
                                  leftPadding: p,
                                  rightPadding: s,
                                  alignment: alignment)
            XCTAssertTrue(res == exp)
        }
    }
    
    func test_format() {
        let p = Character("p")
        let s = Character("s")
        let x = "ABCD"
        var exp = ""
        for delta in [6,7] {
            let maxLength = x.count + delta
            for alignment in [String.Alignment.left, String.Alignment.center, String.Alignment.right] {
                switch alignment {
                case .left:
                    exp = (delta == 6 ? "ABCDssssss" : "ABCDsssssss")
                case .center:
                    exp = (delta == 6 ? "pppABCDsss" : "ppppABCDsss")
                case .right:
                    exp = (delta == 6 ? "ppppppABCD" : "pppppppABCD")
                }
                let res = x.formatted(width: maxLength,
                                      leftPadding: p,
                                      rightPadding: s,
                                      alignment: alignment)
                XCTAssertTrue(res == exp)
            }
        }
    }
    
}
