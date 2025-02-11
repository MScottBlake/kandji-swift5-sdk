//
// DeviceInformationUpdateDevice200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.DeviceInformationUpdateDevice200Response")
public typealias DeviceInformationUpdateDevice200Response = kandji_sdkAPI.DeviceInformationUpdateDevice200Response

extension kandji_sdkAPI {

@objcMembers public class DeviceInformationUpdateDevice200Response: NSObject, Codable, JSONEncodable {

    public var deviceId: String?
    public var deviceName: String?
    public var model: String?
    public var serialNumber: String?
    public var platform: String?
    public var osVersion: String?
    public var lastCheckIn: String?
    public var user: String?
    public var assetTag: String?
    public var blueprintId: String?
    public var mdmEnabled: Int?
    public var mdmEnabledNum: NSNumber? {
        get {
            return mdmEnabled as NSNumber?
        }
    }
    public var agentInstalled: Int?
    public var agentInstalledNum: NSNumber? {
        get {
            return agentInstalled as NSNumber?
        }
    }
    public var isMissing: Int?
    public var isMissingNum: NSNumber? {
        get {
            return isMissing as NSNumber?
        }
    }
    public var isRemoved: Int?
    public var isRemovedNum: NSNumber? {
        get {
            return isRemoved as NSNumber?
        }
    }
    public var agentVersion: String?
    public var firstEnrollment: String?
    public var lastEnrollment: String?
    public var blueprintName: String?
    public var lostModeStatus: String?
    public var tags: AnyCodable?

    public init(deviceId: String? = nil, deviceName: String? = nil, model: String? = nil, serialNumber: String? = nil, platform: String? = nil, osVersion: String? = nil, lastCheckIn: String? = nil, user: String? = nil, assetTag: String? = nil, blueprintId: String? = nil, mdmEnabled: Int? = nil, agentInstalled: Int? = nil, isMissing: Int? = nil, isRemoved: Int? = nil, agentVersion: String? = nil, firstEnrollment: String? = nil, lastEnrollment: String? = nil, blueprintName: String? = nil, lostModeStatus: String? = nil, tags: AnyCodable? = nil) {
        self.deviceId = deviceId
        self.deviceName = deviceName
        self.model = model
        self.serialNumber = serialNumber
        self.platform = platform
        self.osVersion = osVersion
        self.lastCheckIn = lastCheckIn
        self.user = user
        self.assetTag = assetTag
        self.blueprintId = blueprintId
        self.mdmEnabled = mdmEnabled
        self.agentInstalled = agentInstalled
        self.isMissing = isMissing
        self.isRemoved = isRemoved
        self.agentVersion = agentVersion
        self.firstEnrollment = firstEnrollment
        self.lastEnrollment = lastEnrollment
        self.blueprintName = blueprintName
        self.lostModeStatus = lostModeStatus
        self.tags = tags
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId = "device_id"
        case deviceName = "device_name"
        case model
        case serialNumber = "serial_number"
        case platform
        case osVersion = "os_version"
        case lastCheckIn = "last_check_in"
        case user
        case assetTag = "asset_tag"
        case blueprintId = "blueprint_id"
        case mdmEnabled = "mdm_enabled"
        case agentInstalled = "agent_installed"
        case isMissing = "is_missing"
        case isRemoved = "is_removed"
        case agentVersion = "agent_version"
        case firstEnrollment = "first_enrollment"
        case lastEnrollment = "last_enrollment"
        case blueprintName = "blueprint_name"
        case lostModeStatus = "lost_mode_status"
        case tags
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(deviceName, forKey: .deviceName)
        try container.encodeIfPresent(model, forKey: .model)
        try container.encodeIfPresent(serialNumber, forKey: .serialNumber)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(osVersion, forKey: .osVersion)
        try container.encodeIfPresent(lastCheckIn, forKey: .lastCheckIn)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(assetTag, forKey: .assetTag)
        try container.encodeIfPresent(blueprintId, forKey: .blueprintId)
        try container.encodeIfPresent(mdmEnabled, forKey: .mdmEnabled)
        try container.encodeIfPresent(agentInstalled, forKey: .agentInstalled)
        try container.encodeIfPresent(isMissing, forKey: .isMissing)
        try container.encodeIfPresent(isRemoved, forKey: .isRemoved)
        try container.encodeIfPresent(agentVersion, forKey: .agentVersion)
        try container.encodeIfPresent(firstEnrollment, forKey: .firstEnrollment)
        try container.encodeIfPresent(lastEnrollment, forKey: .lastEnrollment)
        try container.encodeIfPresent(blueprintName, forKey: .blueprintName)
        try container.encodeIfPresent(lostModeStatus, forKey: .lostModeStatus)
        try container.encodeIfPresent(tags, forKey: .tags)
    }
}

}
