//
// DeviceSecretsGetUnlockPin200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.DeviceSecretsGetUnlockPin200Response")
public typealias DeviceSecretsGetUnlockPin200Response = kandji_sdkAPI.DeviceSecretsGetUnlockPin200Response

extension kandji_sdkAPI {

@objcMembers public class DeviceSecretsGetUnlockPin200Response: NSObject, Codable, JSONEncodable {

    public var pin: String?

    public init(pin: String? = nil) {
        self.pin = pin
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pin
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pin, forKey: .pin)
    }
}

}
