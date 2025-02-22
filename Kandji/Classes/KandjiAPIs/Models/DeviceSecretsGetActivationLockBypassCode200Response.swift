//
// DeviceSecretsGetActivationLockBypassCode200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.DeviceSecretsGetActivationLockBypassCode200Response")
public typealias DeviceSecretsGetActivationLockBypassCode200Response = kandji_sdkAPI.DeviceSecretsGetActivationLockBypassCode200Response

extension kandji_sdkAPI {

@objcMembers public class DeviceSecretsGetActivationLockBypassCode200Response: NSObject, Codable, JSONEncodable {

    public var userBasedAlbc: String?
    public var deviceBasedAlbc: String?

    public init(userBasedAlbc: String? = nil, deviceBasedAlbc: String? = nil) {
        self.userBasedAlbc = userBasedAlbc
        self.deviceBasedAlbc = deviceBasedAlbc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userBasedAlbc = "user_based_albc"
        case deviceBasedAlbc = "device_based_albc"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userBasedAlbc, forKey: .userBasedAlbc)
        try container.encodeIfPresent(deviceBasedAlbc, forKey: .deviceBasedAlbc)
    }
}

}
