import Foundation

public extension String {
    
    enum Alignment {
        case left
        case center
        case right
    }
    
    func formatted(width: Int,
                   leftPadding: Character = " ",
                   rightPadding: Character = " ",
                   alignment: Alignment = .right) -> String {
        guard width > self.count else { return self }
        let availSpace = width - self.count
        switch alignment {
        case .left:
            return self.suffixed(by: String(rightPadding), repeated: availSpace)
        case .center:
            let leftSpace = (availSpace % 2 == 0 ? availSpace/2 : availSpace/2 + 1)
            let lefts = String(leftPadding).repeated(leftSpace)
            let rightSpace = availSpace - leftSpace
            let rights = String(rightPadding).repeated(rightSpace)
            return lefts + self + rights
        case .right:
            return self.prefixed(by: String(leftPadding), repeated: availSpace)
        }
    }
    
    func prefixed(by p: String, repeated count: Int) -> String {
        return p.repeated(count) + self
    }
    
    func suffixed(by p: String, repeated count: Int) -> String {
        return self + p.repeated(count)
    }
    
    func repeated(_ count: Int) -> String {
        guard count > 0 else { return "" }
        return String(repeating: self, count: count)
    }
    
}
