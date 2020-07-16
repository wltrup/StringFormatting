# StringFormatting
![](https://img.shields.io/badge/platforms-iOS%2010%20%7C%20tvOS%2010%20%7C%20watchOS%204%20%7C%20macOS%2010.14-red)
[![Xcode](https://img.shields.io/badge/Xcode-11-blueviolet.svg)](https://developer.apple.com/xcode)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/wltrup/StringFormatting)
![GitHub](https://img.shields.io/github/license/wltrup/StringFormatting)

## What

**StringFormatting** is a Swift Package Manager package for iOS/tvOS (10.0 and above), watchOS (4.0 and above), and macOS (10.14 and above), under Swift 5.0 and above, defining some useful functions for formatting strings.

```swift
public extension String {
    
    enum Alignment {
        case left
        case center
        case right
    }
    
    func formatted(
        width: Int,
        leftPadding: Character = " ",
        rightPadding: Character = " ",
        alignment: Alignment = .right
    ) -> String
    
    func prefixed(by p: String, repeated count: Int) -> String     
    func suffixed(by p: String, repeated count: Int) -> String 
    
    func repeated(_ count: Int) -> String 
    
}
```

## Installation

**StringFormatting** is provided only as a Swift Package Manager package, because I'm moving away from CocoaPods and Carthage, and can be easily installed directly from Xcode.

## Author

Wagner Truppel, trupwl@gmail.com

## License

**StringFormatting** is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
