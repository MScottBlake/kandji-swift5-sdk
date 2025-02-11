//
// GetDeviceStatus200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.GetDeviceStatus200Response")
public typealias GetDeviceStatus200Response = kandji_sdkAPI.GetDeviceStatus200Response

extension kandji_sdkAPI {

@objcMembers public class GetDeviceStatus200Response: NSObject, Codable, JSONEncodable {

    public var deviceId: String?
    public var libraryItems: AnyCodable?
    public var parameters: AnyCodable?

    public init(deviceId: String? = nil, libraryItems: AnyCodable? = nil, parameters: AnyCodable? = nil) {
        self.deviceId = deviceId
        self.libraryItems = libraryItems
        self.parameters = parameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId = "device_id"
        case libraryItems = "library_items"
        case parameters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(libraryItems, forKey: .libraryItems)
        try container.encodeIfPresent(parameters, forKey: .parameters)
    }
}

}
