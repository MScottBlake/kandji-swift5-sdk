//
// DeviceInformationGetDevice200ResponseUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.DeviceInformationGetDevice200ResponseUser")
public typealias DeviceInformationGetDevice200ResponseUser = kandji_sdkAPI.DeviceInformationGetDevice200ResponseUser

extension kandji_sdkAPI {

@objcMembers public class DeviceInformationGetDevice200ResponseUser: NSObject, Codable, JSONEncodable {

    public var email: String?
    public var name: String?
    public var _id: String?
    public var isArchived: Int?
    public var isArchivedNum: NSNumber? {
        get {
            return isArchived as NSNumber?
        }
    }

    public init(email: String? = nil, name: String? = nil, _id: String? = nil, isArchived: Int? = nil) {
        self.email = email
        self.name = name
        self._id = _id
        self.isArchived = isArchived
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case name
        case _id = "id"
        case isArchived = "is_archived"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(isArchived, forKey: .isArchived)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.DeviceInformationGetDevice200ResponseUser: Identifiable {}
