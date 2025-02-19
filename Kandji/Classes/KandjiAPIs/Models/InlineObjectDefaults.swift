//
// InlineObjectDefaults.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.InlineObjectDefaults")
public typealias InlineObjectDefaults = kandji_sdkAPI.InlineObjectDefaults

extension kandji_sdkAPI {

@objcMembers public class InlineObjectDefaults: NSObject, Codable, JSONEncodable {

    public var email: String?
    public var phone: String?

    public init(email: String? = nil, phone: String? = nil) {
        self.email = email
        self.phone = phone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case phone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(phone, forKey: .phone)
    }
}

}
