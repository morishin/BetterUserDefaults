import XCTest
@testable import BetterUserDefaults

extension UserDefaults.Key {
    static let someKey = UserDefaults.Key("someKey")
}

class BetterUserDefaultsTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
        UserDefaults.standard.removeObject(forKey: UserDefaults.Key.someKey.rawValue)
    }
    
    func testInit() {
        let someKey = UserDefaults.Key("someKey")
        XCTAssertEqual(someKey.rawValue, "someKey")
    }

    func testObjectForKey() {
        UserDefaults.standard.set(1, forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.object(for: .someKey) as? Int, 1)
    }

    func testSetAnyForKey() {
        UserDefaults.standard.set(1, for: .someKey)
        XCTAssertEqual(UserDefaults.standard.integer(forKey: UserDefaults.Key.someKey.rawValue), 1)
    }

    func testRemoveObjectForKey() {
        UserDefaults.standard.set(1, forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.integer(forKey: UserDefaults.Key.someKey.rawValue), 1)
        UserDefaults.standard.removeObject(for: .someKey)
        XCTAssertNil(UserDefaults.standard.object(forKey: UserDefaults.Key.someKey.rawValue))
    }

    func testStringForKey() {
        UserDefaults.standard.set("someString", forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.string(for: .someKey), "someString")
    }

    func testArrayForKey() {
        UserDefaults.standard.set([1, 2, 3], forKey: UserDefaults.Key.someKey.rawValue)
        if let array = UserDefaults.standard.array(for: .someKey)?.flatMap({ $0 as? Int }) {
            XCTAssertEqual(array, [1, 2, 3])
        } else {
            XCTFail()
        }
    }

    func testDictionaryForKey() {
        UserDefaults.standard.set(["key": "value"], forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.dictionary(for: .someKey)?["key"] as? String, "value")
    }

    func testDataForKey() {
        let data = "hello".data(using: .utf8)
        UserDefaults.standard.set(data, forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.data(for: .someKey), data)
    }

    func testStringArrayForKey() {
        UserDefaults.standard.set(["a", "b", "c"], forKey: UserDefaults.Key.someKey.rawValue)
        if let array = UserDefaults.standard.stringArray(for: .someKey) {
            XCTAssertEqual(array, ["a", "b", "c"])
        } else {
            XCTFail()
        }
    }

    func testIntegerForKey() {
        UserDefaults.standard.set(1, forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.integer(for: .someKey), 1)
    }

    func testFloatForKey() {
        UserDefaults.standard.set(Float(1.0), forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.float(for: .someKey), Float(1.0))
    }

    func testDoubleForKey() {
        UserDefaults.standard.set(Double(1.0), forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.double(for: .someKey), Double(1.0))
    }

    func testBoolForKey() {
        UserDefaults.standard.set(true, forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.bool(for: .someKey), true)
    }

    func testUrlForKey() {
        let url = URL(string: "https://apple.com")!
        UserDefaults.standard.set(url, forKey: UserDefaults.Key.someKey.rawValue)
        XCTAssertEqual(UserDefaults.standard.url(for: .someKey), url)
    }

    func testSetIntForKey() {
        UserDefaults.standard.set(1, for: .someKey)
        XCTAssertEqual(UserDefaults.standard.integer(forKey: UserDefaults.Key.someKey.rawValue), 1)
    }

    func testSetFloatForKey() {
        UserDefaults.standard.set(Float(1.0), for: .someKey)
        XCTAssertEqual(UserDefaults.standard.float(forKey: UserDefaults.Key.someKey.rawValue), Float(1.0))
    }

    func testSetDoubleForKey() {
        UserDefaults.standard.set(Double(1.0), for: .someKey)
        XCTAssertEqual(UserDefaults.standard.double(forKey: UserDefaults.Key.someKey.rawValue), Double(1.0))
    }

    func testSetBoolForKey() {
        UserDefaults.standard.set(true, for: .someKey)
        XCTAssertEqual(UserDefaults.standard.bool(forKey: UserDefaults.Key.someKey.rawValue), true)
    }

    func testSetUrlForKey() {
        let url = URL(string: "https://apple.com")!
        UserDefaults.standard.set(url, for: .someKey)
        XCTAssertEqual(UserDefaults.standard.url(forKey: UserDefaults.Key.someKey.rawValue), url)
    }
}
