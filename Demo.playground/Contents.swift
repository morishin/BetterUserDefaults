import Foundation
import SwiftyUserDefaults

extension UserDefaults.Key {
    static let sampleKeyA = UserDefaults.Key("sampleKeyA")
    static let sampleKeyB = UserDefaults.Key("sampleKeyB")
}

UserDefaults.standard.set(true, for: .sampleKeyA)
UserDefaults.standard.set(123, for: .sampleKeyB)

// not stored on playground...
UserDefaults.standard.bool(for: .sampleKeyA)
UserDefaults.standard.integer(for: .sampleKeyB)
