//
// InlineObject22.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.InlineObject22")
public typealias InlineObject22 = kandji_sdkAPI.InlineObject22

extension kandji_sdkAPI {

@objcMembers public class InlineObject22: NSObject, Codable, JSONEncodable {

    public var recoveryPassword: String?

    public init(recoveryPassword: String? = nil) {
        self.recoveryPassword = recoveryPassword
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recoveryPassword = "recovery_password"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(recoveryPassword, forKey: .recoveryPassword)
    }
}

}
