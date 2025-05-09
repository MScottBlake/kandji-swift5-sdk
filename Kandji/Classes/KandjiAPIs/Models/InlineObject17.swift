//
// InlineObject17.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.InlineObject17")
public typealias InlineObject17 = kandji_sdkAPI.InlineObject17

extension kandji_sdkAPI {

@objcMembers public class InlineObject17: NSObject, Codable, JSONEncodable {

    public var deviceId: String?
    public var commands: InlineObject2?

    public init(deviceId: String? = nil, commands: InlineObject2? = nil) {
        self.deviceId = deviceId
        self.commands = commands
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId = "device_id"
        case commands
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(commands, forKey: .commands)
    }
}

}
