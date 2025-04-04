//
// UsersGetUser200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.UsersGetUser200Response")
public typealias UsersGetUser200Response = kandji_sdkAPI.UsersGetUser200Response

extension kandji_sdkAPI {

@objcMembers public class UsersGetUser200Response: NSObject, Codable, JSONEncodable {

    public var active: Int?
    public var activeNum: NSNumber? {
        get {
            return active as NSNumber?
        }
    }
    public var archived: Int?
    public var archivedNum: NSNumber? {
        get {
            return archived as NSNumber?
        }
    }
    public var createdAt: String?
    public var department: AnyCodable?
    public var deprecatedUserId: String?
    public var deviceCount: Int?
    public var deviceCountNum: NSNumber? {
        get {
            return deviceCount as NSNumber?
        }
    }
    public var email: String?
    public var _id: String?
    public var integration: UsersGetUser200ResponseIntegration?
    public var jobTitle: AnyCodable?
    public var name: String?
    public var updatedAt: String?

    public init(active: Int? = nil, archived: Int? = nil, createdAt: String? = nil, department: AnyCodable? = nil, deprecatedUserId: String? = nil, deviceCount: Int? = nil, email: String? = nil, _id: String? = nil, integration: UsersGetUser200ResponseIntegration? = nil, jobTitle: AnyCodable? = nil, name: String? = nil, updatedAt: String? = nil) {
        self.active = active
        self.archived = archived
        self.createdAt = createdAt
        self.department = department
        self.deprecatedUserId = deprecatedUserId
        self.deviceCount = deviceCount
        self.email = email
        self._id = _id
        self.integration = integration
        self.jobTitle = jobTitle
        self.name = name
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case archived
        case createdAt = "created_at"
        case department
        case deprecatedUserId = "deprecated_user_id"
        case deviceCount = "device_count"
        case email
        case _id = "id"
        case integration
        case jobTitle = "job_title"
        case name
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(archived, forKey: .archived)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(department, forKey: .department)
        try container.encodeIfPresent(deprecatedUserId, forKey: .deprecatedUserId)
        try container.encodeIfPresent(deviceCount, forKey: .deviceCount)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(integration, forKey: .integration)
        try container.encodeIfPresent(jobTitle, forKey: .jobTitle)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.UsersGetUser200Response: Identifiable {}
