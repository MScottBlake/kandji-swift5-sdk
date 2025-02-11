//
// IpadApps200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.IpadApps200Response")
public typealias IpadApps200Response = kandji_sdkAPI.IpadApps200Response

extension kandji_sdkAPI {

@objcMembers public class IpadApps200Response: NSObject, Codable, JSONEncodable {

    public var deviceId: String?
    public var apps: AnyCodable?

    public init(deviceId: String? = nil, apps: AnyCodable? = nil) {
        self.deviceId = deviceId
        self.apps = apps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId = "device_id"
        case apps
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(apps, forKey: .apps)
    }
}

}
