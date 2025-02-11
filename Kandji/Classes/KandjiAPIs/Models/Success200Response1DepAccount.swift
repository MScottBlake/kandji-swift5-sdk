//
// Success200Response1DepAccount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.Success200Response1DepAccount")
public typealias Success200Response1DepAccount = kandji_sdkAPI.Success200Response1DepAccount

extension kandji_sdkAPI {

@objcMembers public class Success200Response1DepAccount: NSObject, Codable, JSONEncodable {

    public var _id: String?
    public var serverName: String?

    public init(_id: String? = nil, serverName: String? = nil) {
        self._id = _id
        self.serverName = serverName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case serverName = "server_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(serverName, forKey: .serverName)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.Success200Response1DepAccount: Identifiable {}
