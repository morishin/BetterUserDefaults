import Foundation

extension UserDefaults {
    public struct Key: RawRepresentable {
        public typealias RawValue = String
        private var _rawValue: RawValue

        public var rawValue: RawValue {
            return _rawValue
        }

        public init(_ rawValue: String) {
            self.init(rawValue: rawValue)
        }

        public init(rawValue: RawValue) {
            _rawValue = rawValue
        }
    }
}

extension UserDefaults {
    public func object(for key: Key) -> Any? {
        return object(forKey: key.rawValue)
    }

    public func set(_ value: Any?, for key: Key) {
        set(value, forKey: key.rawValue)
    }

    public func removeObject(for key: Key) {
        removeObject(forKey: key.rawValue)
    }

    public func string(for key: Key) -> String? {
        return string(forKey: key.rawValue)
    }

    public func array(for key: Key) -> [Any]? {
        return array(forKey: key.rawValue)
    }

    public func dictionary(for key: Key) -> [String : Any]? {
        return dictionary(forKey: key.rawValue)
    }

    public func data(for key: Key) -> Data? {
        return data(forKey: key.rawValue)
    }

    public func stringArray(for key: Key) -> [String]? {
        return stringArray(forKey: key.rawValue)
    }

    public func integer(for key: Key) -> Int {
        return integer(forKey: key.rawValue)
    }

    public func float(for key: Key) -> Float {
        return float(forKey: key.rawValue)
    }

    public func double(for key: Key) -> Double {
        return double(forKey: key.rawValue)
    }

    public func bool(for key: Key) -> Bool {
        return bool(forKey: key.rawValue)
    }

    public func url(for key: Key) -> URL? {
        return url(forKey: key.rawValue)
    }

    public func set(_ value: Int, for key: Key) {
        set(value, forKey: key.rawValue)
    }

    public func set(_ value: Float, for key: Key) {
        set(value, forKey: key.rawValue)
    }

    public func set(_ value: Double, for key: Key) {
        set(value, forKey: key.rawValue)
    }

    public func set(_ value: Bool, for key: Key) {
        set(value, forKey: key.rawValue)
    }

    public func set(_ url: URL?, for key: Key) {
        set(url, forKey: key.rawValue)
    }
}
