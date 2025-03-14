//
// Success200Response17LimitsMaxDevicesPerPlatform.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.Success200Response17LimitsMaxDevicesPerPlatform")
public typealias Success200Response17LimitsMaxDevicesPerPlatform = kandji_sdkAPI.Success200Response17LimitsMaxDevicesPerPlatform

extension kandji_sdkAPI {

@objcMembers public class Success200Response17LimitsMaxDevicesPerPlatform: NSObject, Codable, JSONEncodable {

    public var macos: Int?
    public var macosNum: NSNumber? {
        get {
            return macos as NSNumber?
        }
    }
    public var iosIpados: Int?
    public var iosIpadosNum: NSNumber? {
        get {
            return iosIpados as NSNumber?
        }
    }

    public init(macos: Int? = nil, iosIpados: Int? = nil) {
        self.macos = macos
        self.iosIpados = iosIpados
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case macos
        case iosIpados = "ios_ipados"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(macos, forKey: .macos)
        try container.encodeIfPresent(iosIpados, forKey: .iosIpados)
    }
}

}
