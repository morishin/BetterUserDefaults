# BetterUserDefaults

![Swift version](https://img.shields.io/badge/swift-4.0-orange.svg)
![CocoaPods compatible](https://cocoapod-badges.herokuapp.com/v/BetterUserDefaults/badge.png)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


UserDefaults Swift Extensions

## Usage
```swift
import BetterUserDefaults

extension UserDefaults.Key {
    static let sampleKeyA = UserDefaults.Key("sampleKeyA")
    static let sampleKeyB = UserDefaults.Key("sampleKeyB")
}

UserDefaults.standard.set(true, for: .sampleKeyA)
UserDefaults.standard.set(123, for: .sampleKeyB)

UserDefaults.standard.bool(for: .sampleKeyA)       // true
UserDefaults.standard.integer(for: .sampleKeyB)    // 123
```

## Installation
### Carthage
Cartfile

```
github "morishin/BetterUserDefaults"
```

### CocoaPods
Podfile

```ruby
pod 'BetterUserDefaults'
```

## LICENSE
MIT
