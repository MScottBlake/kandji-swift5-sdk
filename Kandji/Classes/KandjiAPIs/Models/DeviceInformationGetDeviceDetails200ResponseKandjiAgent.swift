//
// DeviceInformationGetDeviceDetails200ResponseKandjiAgent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.DeviceInformationGetDeviceDetails200ResponseKandjiAgent")
public typealias DeviceInformationGetDeviceDetails200ResponseKandjiAgent = kandji_sdkAPI.DeviceInformationGetDeviceDetails200ResponseKandjiAgent

extension kandji_sdkAPI {

@objcMembers public class DeviceInformationGetDeviceDetails200ResponseKandjiAgent: NSObject, Codable, JSONEncodable {

    public var agentInstalled: String?
    public var agentVersion: String?
    public var installDate: String?
    public var lastCheckIn: String?

    public init(agentInstalled: String? = nil, agentVersion: String? = nil, installDate: String? = nil, lastCheckIn: String? = nil) {
        self.agentInstalled = agentInstalled
        self.agentVersion = agentVersion
        self.installDate = installDate
        self.lastCheckIn = lastCheckIn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case agentInstalled = "agent_installed"
        case agentVersion = "agent_version"
        case installDate = "install_date"
        case lastCheckIn = "last_check_in"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(agentInstalled, forKey: .agentInstalled)
        try container.encodeIfPresent(agentVersion, forKey: .agentVersion)
        try container.encodeIfPresent(installDate, forKey: .installDate)
        try container.encodeIfPresent(lastCheckIn, forKey: .lastCheckIn)
    }
}

}
