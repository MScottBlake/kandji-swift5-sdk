//
// BlueprintsGetBlueprint200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.BlueprintsGetBlueprint200Response")
public typealias BlueprintsGetBlueprint200Response = kandji_sdkAPI.BlueprintsGetBlueprint200Response

extension kandji_sdkAPI {

@objcMembers public class BlueprintsGetBlueprint200Response: NSObject, Codable, JSONEncodable {

    public var color: String?
    public var computersCount: Int?
    public var computersCountNum: NSNumber? {
        get {
            return computersCount as NSNumber?
        }
    }
    public var _description: String?
    public var enrollmentCode: BlueprintsCreateBlueprint201ResponseEnrollmentCode?
    public var icon: String?
    public var _id: String?
    public var name: String?
    public var params: AnyCodable?
    public var type: String?

    public init(color: String? = nil, computersCount: Int? = nil, _description: String? = nil, enrollmentCode: BlueprintsCreateBlueprint201ResponseEnrollmentCode? = nil, icon: String? = nil, _id: String? = nil, name: String? = nil, params: AnyCodable? = nil, type: String? = nil) {
        self.color = color
        self.computersCount = computersCount
        self._description = _description
        self.enrollmentCode = enrollmentCode
        self.icon = icon
        self._id = _id
        self.name = name
        self.params = params
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case color
        case computersCount = "computers_count"
        case _description = "description"
        case enrollmentCode = "enrollment_code"
        case icon
        case _id = "id"
        case name
        case params
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(color, forKey: .color)
        try container.encodeIfPresent(computersCount, forKey: .computersCount)
        try container.encodeIfPresent(_description, forKey: ._description)
        try container.encodeIfPresent(enrollmentCode, forKey: .enrollmentCode)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(params, forKey: .params)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.BlueprintsGetBlueprint200Response: Identifiable {}
