//
// PrismDeviceInformation200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.PrismDeviceInformation200Response")
public typealias PrismDeviceInformation200Response = kandji_sdkAPI.PrismDeviceInformation200Response

extension kandji_sdkAPI {

@objcMembers public class PrismDeviceInformation200Response: NSObject, Codable, JSONEncodable {

    public var offset: Int?
    public var offsetNum: NSNumber? {
        get {
            return offset as NSNumber?
        }
    }
    public var limit: Int?
    public var limitNum: NSNumber? {
        get {
            return limit as NSNumber?
        }
    }
    public var total: Int?
    public var totalNum: NSNumber? {
        get {
            return total as NSNumber?
        }
    }
    public var data: AnyCodable?
    public var cursor: AnyCodable?

    public init(offset: Int? = nil, limit: Int? = nil, total: Int? = nil, data: AnyCodable? = nil, cursor: AnyCodable? = nil) {
        self.offset = offset
        self.limit = limit
        self.total = total
        self.data = data
        self.cursor = cursor
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case offset
        case limit
        case total
        case data
        case cursor
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(offset, forKey: .offset)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(cursor, forKey: .cursor)
    }
}

}
