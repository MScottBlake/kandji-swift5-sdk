//
// SettingsLicensing200ResponseCounts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.SettingsLicensing200ResponseCounts")
public typealias SettingsLicensing200ResponseCounts = kandji_sdkAPI.SettingsLicensing200ResponseCounts

extension kandji_sdkAPI {

@objcMembers public class SettingsLicensing200ResponseCounts: NSObject, Codable, JSONEncodable {

    public var computersCount: Int?
    public var computersCountNum: NSNumber? {
        get {
            return computersCount as NSNumber?
        }
    }
    public var iosCount: Int?
    public var iosCountNum: NSNumber? {
        get {
            return iosCount as NSNumber?
        }
    }
    public var ipadosCount: Int?
    public var ipadosCountNum: NSNumber? {
        get {
            return ipadosCount as NSNumber?
        }
    }
    public var macosCount: Int?
    public var macosCountNum: NSNumber? {
        get {
            return macosCount as NSNumber?
        }
    }
    public var tvosCount: Int?
    public var tvosCountNum: NSNumber? {
        get {
            return tvosCount as NSNumber?
        }
    }

    public init(computersCount: Int? = nil, iosCount: Int? = nil, ipadosCount: Int? = nil, macosCount: Int? = nil, tvosCount: Int? = nil) {
        self.computersCount = computersCount
        self.iosCount = iosCount
        self.ipadosCount = ipadosCount
        self.macosCount = macosCount
        self.tvosCount = tvosCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case computersCount = "computers_count"
        case iosCount = "ios_count"
        case ipadosCount = "ipados_count"
        case macosCount = "macos_count"
        case tvosCount = "tvos_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(computersCount, forKey: .computersCount)
        try container.encodeIfPresent(iosCount, forKey: .iosCount)
        try container.encodeIfPresent(ipadosCount, forKey: .ipadosCount)
        try container.encodeIfPresent(macosCount, forKey: .macosCount)
        try container.encodeIfPresent(tvosCount, forKey: .tvosCount)
    }
}

}
