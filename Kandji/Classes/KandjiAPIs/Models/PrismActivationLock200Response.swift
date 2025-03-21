//
// PrismActivationLock200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.PrismActivationLock200Response")
public typealias PrismActivationLock200Response = kandji_sdkAPI.PrismActivationLock200Response

extension kandji_sdkAPI {

@objcMembers public class PrismActivationLock200Response: NSObject, Codable, JSONEncodable {

    public var cursor: AnyCodable?
    public var data: AnyCodable?
    public var limit: Int?
    public var limitNum: NSNumber? {
        get {
            return limit as NSNumber?
        }
    }
    public var offset: AnyCodable?
    public var total: Int?
    public var totalNum: NSNumber? {
        get {
            return total as NSNumber?
        }
    }

    public init(cursor: AnyCodable? = nil, data: AnyCodable? = nil, limit: Int? = nil, offset: AnyCodable? = nil, total: Int? = nil) {
        self.cursor = cursor
        self.data = data
        self.limit = limit
        self.offset = offset
        self.total = total
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cursor
        case data
        case limit
        case offset
        case total
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cursor, forKey: .cursor)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(offset, forKey: .offset)
        try container.encodeIfPresent(total, forKey: .total)
    }
}

}
