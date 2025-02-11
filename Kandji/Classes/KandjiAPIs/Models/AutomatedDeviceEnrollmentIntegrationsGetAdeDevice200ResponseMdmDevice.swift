//
// AutomatedDeviceEnrollmentIntegrationsGetAdeDevice200ResponseMdmDevice.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.AutomatedDeviceEnrollmentIntegrationsGetAdeDevice200ResponseMdmDevice")
public typealias AutomatedDeviceEnrollmentIntegrationsGetAdeDevice200ResponseMdmDevice = kandji_sdkAPI.AutomatedDeviceEnrollmentIntegrationsGetAdeDevice200ResponseMdmDevice

extension kandji_sdkAPI {

@objcMembers public class AutomatedDeviceEnrollmentIntegrationsGetAdeDevice200ResponseMdmDevice: NSObject, Codable, JSONEncodable {

    public var _id: String?
    public var enrolledAt: String?
    public var name: String?
    public var enrollmentStatus: Int?
    public var enrollmentStatusNum: NSNumber? {
        get {
            return enrollmentStatus as NSNumber?
        }
    }
    public var deferredInstall: Int?
    public var deferredInstallNum: NSNumber? {
        get {
            return deferredInstall as NSNumber?
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

    public init(_id: String? = nil, enrolledAt: String? = nil, name: String? = nil, enrollmentStatus: Int? = nil, deferredInstall: Int? = nil, isMissing: Int? = nil, isRemoved: Int? = nil) {
        self._id = _id
        self.enrolledAt = enrolledAt
        self.name = name
        self.enrollmentStatus = enrollmentStatus
        self.deferredInstall = deferredInstall
        self.isMissing = isMissing
        self.isRemoved = isRemoved
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case enrolledAt = "enrolled_at"
        case name
        case enrollmentStatus = "enrollment_status"
        case deferredInstall = "deferred_install"
        case isMissing = "is_missing"
        case isRemoved = "is_removed"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(enrolledAt, forKey: .enrolledAt)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(enrollmentStatus, forKey: .enrollmentStatus)
        try container.encodeIfPresent(deferredInstall, forKey: .deferredInstall)
        try container.encodeIfPresent(isMissing, forKey: .isMissing)
        try container.encodeIfPresent(isRemoved, forKey: .isRemoved)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.AutomatedDeviceEnrollmentIntegrationsGetAdeDevice200ResponseMdmDevice: Identifiable {}
