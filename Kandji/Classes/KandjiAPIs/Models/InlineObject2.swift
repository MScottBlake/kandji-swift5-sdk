//
// InlineObject2.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.InlineObject2")
public typealias InlineObject2 = kandji_sdkAPI.InlineObject2

extension kandji_sdkAPI {

@objcMembers public class InlineObject2: NSObject, Codable, JSONEncodable {

    public var count: Int?
    public var countNum: NSNumber? {
        get {
            return count as NSNumber?
        }
    }
    public var next: AnyCodable?
    public var previous: AnyCodable?
    public var results: AnyCodable?

    public init(count: Int? = nil, next: AnyCodable? = nil, previous: AnyCodable? = nil, results: AnyCodable? = nil) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case next
        case previous
        case results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(next, forKey: .next)
        try container.encodeIfPresent(previous, forKey: .previous)
        try container.encodeIfPresent(results, forKey: .results)
    }
}

}
