//
// InlineObject5.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.InlineObject5")
public typealias InlineObject5 = kandji_sdkAPI.InlineObject5

extension kandji_sdkAPI {

@objcMembers public class InlineObject5: NSObject, Codable, JSONEncodable {

    public var _id: String?
    public var name: String?
    public var icon: String?
    public var color: String?
    public var _description: String?
    public var params: AnyCodable?
    public var enrollmentCode: InlineObject5EnrollmentCode?
    public var type: String?

    public init(_id: String? = nil, name: String? = nil, icon: String? = nil, color: String? = nil, _description: String? = nil, params: AnyCodable? = nil, enrollmentCode: InlineObject5EnrollmentCode? = nil, type: String? = nil) {
        self._id = _id
        self.name = name
        self.icon = icon
        self.color = color
        self._description = _description
        self.params = params
        self.enrollmentCode = enrollmentCode
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case name
        case icon
        case color
        case _description = "description"
        case params
        case enrollmentCode = "enrollment_code"
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(_description, forKey: ._description)
        try container.encodeIfPresent(params, forKey: .params)
        try container.encodeIfPresent(enrollmentCode, forKey: .enrollmentCode)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.InlineObject5: Identifiable {}
