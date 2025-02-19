//
// InlineObject29.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "kandji_sdkAPI.InlineObject29")
public typealias InlineObject29 = kandji_sdkAPI.InlineObject29

extension kandji_sdkAPI {

@objcMembers public class InlineObject29: NSObject, Codable, JSONEncodable {

    public var _id: String?
    public var status: String?
    public var category: String?
    public var args: InlineObject27Args?
    public var errorMsg: AnyCodable?
    public var path: String?
    public var signedUrl: String?
    public var createdAt: String?
    public var updatedAt: String?

    public init(_id: String? = nil, status: String? = nil, category: String? = nil, args: InlineObject27Args? = nil, errorMsg: AnyCodable? = nil, path: String? = nil, signedUrl: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self._id = _id
        self.status = status
        self.category = category
        self.args = args
        self.errorMsg = errorMsg
        self.path = path
        self.signedUrl = signedUrl
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case status
        case category
        case args
        case errorMsg = "error_msg"
        case path
        case signedUrl = "signed_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(args, forKey: .args)
        try container.encodeIfPresent(errorMsg, forKey: .errorMsg)
        try container.encodeIfPresent(path, forKey: .path)
        try container.encodeIfPresent(signedUrl, forKey: .signedUrl)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

}

@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension kandji_sdkAPI.InlineObject29: Identifiable {}
