//
// AutomatedDeviceEnrollmentIntegrationsListAdeDevices400Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.AutomatedDeviceEnrollmentIntegrationsListAdeDevices400Response")
public typealias AutomatedDeviceEnrollmentIntegrationsListAdeDevices400Response = kandji_sdkAPI.AutomatedDeviceEnrollmentIntegrationsListAdeDevices400Response

extension kandji_sdkAPI {

@objcMembers public class AutomatedDeviceEnrollmentIntegrationsListAdeDevices400Response: NSObject, Codable, JSONEncodable {

    public var depAccount: AnyCodable?

    public init(depAccount: AnyCodable? = nil) {
        self.depAccount = depAccount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case depAccount = "dep_account"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(depAccount, forKey: .depAccount)
    }
}

}
