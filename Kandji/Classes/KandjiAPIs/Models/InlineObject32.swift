//
// InlineObject32.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.InlineObject32")
public typealias InlineObject32 = kandji_sdkAPI.InlineObject32

extension kandji_sdkAPI {

@objcMembers public class InlineObject32: NSObject, Codable, JSONEncodable {

    public var count: Int?
    public var countNum: NSNumber? {
        get {
            return count as NSNumber?
        }
    }
    public var next: AnyCodable?
    public var previous: AnyCodable?
    public var malwareCount: Int?
    public var malwareCountNum: NSNumber? {
        get {
            return malwareCount as NSNumber?
        }
    }
    public var pupCount: Int?
    public var pupCountNum: NSNumber? {
        get {
            return pupCount as NSNumber?
        }
    }
    public var results: AnyCodable?

    public init(count: Int? = nil, next: AnyCodable? = nil, previous: AnyCodable? = nil, malwareCount: Int? = nil, pupCount: Int? = nil, results: AnyCodable? = nil) {
        self.count = count
        self.next = next
        self.previous = previous
        self.malwareCount = malwareCount
        self.pupCount = pupCount
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case next
        case previous
        case malwareCount = "malware_count"
        case pupCount = "pup_count"
        case results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(next, forKey: .next)
        try container.encodeIfPresent(previous, forKey: .previous)
        try container.encodeIfPresent(malwareCount, forKey: .malwareCount)
        try container.encodeIfPresent(pupCount, forKey: .pupCount)
        try container.encodeIfPresent(results, forKey: .results)
    }
}

}
