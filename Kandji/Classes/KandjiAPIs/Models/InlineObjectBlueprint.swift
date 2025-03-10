//
// InlineObjectBlueprint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.InlineObjectBlueprint")
public typealias InlineObjectBlueprint = kandji_sdkAPI.InlineObjectBlueprint

extension kandji_sdkAPI {

@objcMembers public class InlineObjectBlueprint: NSObject, Codable, JSONEncodable {

    public var _id: String?
    public var name: String?
    public var icon: String?
    public var color: String?

    public init(_id: String? = nil, name: String? = nil, icon: String? = nil, color: String? = nil) {
        self._id = _id
        self.name = name
        self.icon = icon
        self.color = color
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case name
        case icon
        case color
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(color, forKey: .color)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.InlineObjectBlueprint: Identifiable {}
