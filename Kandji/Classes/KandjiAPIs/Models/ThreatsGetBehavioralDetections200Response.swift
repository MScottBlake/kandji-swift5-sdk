//
// ThreatsGetBehavioralDetections200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.ThreatsGetBehavioralDetections200Response")
public typealias ThreatsGetBehavioralDetections200Response = kandji_sdkAPI.ThreatsGetBehavioralDetections200Response

extension kandji_sdkAPI {

@objcMembers public class ThreatsGetBehavioralDetections200Response: NSObject, Codable, JSONEncodable {

    public var maliciousCount: Int?
    public var maliciousCountNum: NSNumber? {
        get {
            return maliciousCount as NSNumber?
        }
    }
    public var next: AnyCodable?
    public var previous: AnyCodable?
    public var results: AnyCodable?
    public var suspiciousCount: Int?
    public var suspiciousCountNum: NSNumber? {
        get {
            return suspiciousCount as NSNumber?
        }
    }
    public var totalCount: Int?
    public var totalCountNum: NSNumber? {
        get {
            return totalCount as NSNumber?
        }
    }

    public init(maliciousCount: Int? = nil, next: AnyCodable? = nil, previous: AnyCodable? = nil, results: AnyCodable? = nil, suspiciousCount: Int? = nil, totalCount: Int? = nil) {
        self.maliciousCount = maliciousCount
        self.next = next
        self.previous = previous
        self.results = results
        self.suspiciousCount = suspiciousCount
        self.totalCount = totalCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maliciousCount = "malicious_count"
        case next
        case previous
        case results
        case suspiciousCount = "suspicious_count"
        case totalCount = "total_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maliciousCount, forKey: .maliciousCount)
        try container.encodeIfPresent(next, forKey: .next)
        try container.encodeIfPresent(previous, forKey: .previous)
        try container.encodeIfPresent(results, forKey: .results)
        try container.encodeIfPresent(suspiciousCount, forKey: .suspiciousCount)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
    }
}

}
