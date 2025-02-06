//
// CustomProfilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

extension kandji_sdkAPI {


@objcMembers open class CustomProfilesAPI : NSObject {

    /**
     Create Custom Profile
     
     - parameter name: (form) (Required) The profile name 
     - parameter file: (form) (Required) The path to the profile&#39;s .mobileconfig file 
     - parameter active: (form) (Optional, default&#x3D;true) Whether this library item is active 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customProfilesCreateCustomProfile(name: String, file: URL, active: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return customProfilesCreateCustomProfileWithRequestBuilder(name: name, file: file, active: active).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Custom Profile
     - POST /api/v1/library/custom-profiles
     - This request allows you to create a custom profile in the Kandji library.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#622db5fa-33f1-4ba3-9b70-3ac6befe7239
}
     - parameter name: (form) (Required) The profile name 
     - parameter file: (form) (Required) The path to the profile&#39;s .mobileconfig file 
     - parameter active: (form) (Optional, default&#x3D;true) Whether this library item is active 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func customProfilesCreateCustomProfileWithRequestBuilder(name: String, file: URL, active: String) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/library/custom-profiles"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "name": name.encodeToJSON(),
            "file": file.encodeToJSON(),
            "active": active.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete Custom Profile
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customProfilesDeleteCustomProfile(libraryItemId: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return customProfilesDeleteCustomProfileWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Custom Profile
     - DELETE /api/v1/library/custom-profiles/{library_item_id}
     - <p>NOTICE: This is permanent so be careful.</p> <p>This endpoint sends a request to delete a specific custom profile from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#30379637-30be-4aab-89e2-481329354f3e
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func customProfilesDeleteCustomProfileWithRequestBuilder(libraryItemId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/library/custom-profiles/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = kandji_sdkAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Custom Profile
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customProfilesGetCustomProfile(libraryItemId: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return customProfilesGetCustomProfileWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Custom Profile
     - GET /api/v1/library/custom-profiles/{library_item_id}
     - <p>This endpoint retrieves details about a specific custom profile from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#0bad08d1-6a46-40b8-941b-d106fba6851a
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func customProfilesGetCustomProfileWithRequestBuilder(libraryItemId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/custom-profiles/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List Custom Profiles
     
     - parameter page: (query) Optional page number. Used when results exceed pagination threshold. A hard upper limit is set at 300 device records returned per request. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customProfilesListCustomProfiles(page: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return customProfilesListCustomProfilesWithRequestBuilder(page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Custom Profiles
     - GET /api/v1/library/custom-profiles
     - This endpoint makes a request to retrieve a list of custom profiles from the Kandji library.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#6ab7e166-e758-454f-b43e-200537097a92
}
     - parameter page: (query) Optional page number. Used when results exceed pagination threshold. A hard upper limit is set at 300 device records returned per request. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func customProfilesListCustomProfilesWithRequestBuilder(page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/library/custom-profiles"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update Custom Profile
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func customProfilesUpdateCustomProfile(libraryItemId: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return customProfilesUpdateCustomProfileWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Custom Profile
     - PATCH /api/v1/library/custom-profiles/{library_item_id}
     - <p>This request allows you to update a custom profile in the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#57cf8ffc-d8b9-4ac0-b6a9-0a792bb661df
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func customProfilesUpdateCustomProfileWithRequestBuilder(libraryItemId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/custom-profiles/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
}
