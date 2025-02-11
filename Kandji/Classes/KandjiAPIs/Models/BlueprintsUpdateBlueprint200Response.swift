//
// BlueprintsUpdateBlueprint200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.BlueprintsUpdateBlueprint200Response")
public typealias BlueprintsUpdateBlueprint200Response = kandji_sdkAPI.BlueprintsUpdateBlueprint200Response

extension kandji_sdkAPI {

@objcMembers public class BlueprintsUpdateBlueprint200Response: NSObject, Codable, JSONEncodable {

    public var _id: String?
    public var name: String?
    public var icon: String?
    public var color: String?
    public var _description: String?
    public var params: AnyCodable?
    public var computersCount: Int?
    public var computersCountNum: NSNumber? {
        get {
            return computersCount as NSNumber?
        }
    }
    public var missingComputersCount: Int?
    public var missingComputersCountNum: NSNumber? {
        get {
            return missingComputersCount as NSNumber?
        }
    }
    public var enrollmentCode: BlueprintsCreateBlueprint201ResponseEnrollmentCode?

    public init(_id: String? = nil, name: String? = nil, icon: String? = nil, color: String? = nil, _description: String? = nil, params: AnyCodable? = nil, computersCount: Int? = nil, missingComputersCount: Int? = nil, enrollmentCode: BlueprintsCreateBlueprint201ResponseEnrollmentCode? = nil) {
        self._id = _id
        self.name = name
        self.icon = icon
        self.color = color
        self._description = _description
        self.params = params
        self.computersCount = computersCount
        self.missingComputersCount = missingComputersCount
        self.enrollmentCode = enrollmentCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case name
        case icon
        case color
        case _description = "description"
        case params
        case computersCount = "computers_count"
        case missingComputersCount = "missing_computers_count"
        case enrollmentCode = "enrollment_code"
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
        try container.encodeIfPresent(computersCount, forKey: .computersCount)
        try container.encodeIfPresent(missingComputersCount, forKey: .missingComputersCount)
        try container.encodeIfPresent(enrollmentCode, forKey: .enrollmentCode)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.BlueprintsUpdateBlueprint200Response: Identifiable {}
