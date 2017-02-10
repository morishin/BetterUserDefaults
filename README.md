# SwiftyUserDefaults

![Swift version](https://img.shields.io/badge/swift-3.0-orange.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


UserDefaults Swift Extensions

## Usage
```swift
import SwiftyUserDefaults

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
github "morishin/SwiftyUserDefaults"
```

### CocoaPods
Podfile

```ruby
pod 'SwiftyUserDefaults', git: 'https://github.com/morishin/SwiftyUserDefaults.git'
```

## LICENSE
MIT