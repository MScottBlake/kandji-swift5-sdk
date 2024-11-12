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

open class CustomProfilesAPI {

    /**
     Create Custom Profile
     
     - parameter active: (form) (Optional, default&#x3D;true) Whether this library item is active 
     - parameter file: (form) (Required) The path to the profile&#39;s .mobileconfig file 
     - parameter name: (form) (Required) The profile name 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createCustomProfile(active: String, file: URL, name: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return createCustomProfileWithRequestBuilder(active: active, file: file, name: name).execute(apiResponseQueue) { result in
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
     - responseHeaders: [Allow(String), Content-Length(String), Content-Security-Policy(String), Content-Type(String), Cross-Origin-Opener-Policy(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#622db5fa-33f1-4ba3-9b70-3ac6befe7239
}
     - parameter active: (form) (Optional, default&#x3D;true) Whether this library item is active 
     - parameter file: (form) (Required) The path to the profile&#39;s .mobileconfig file 
     - parameter name: (form) (Required) The profile name 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func createCustomProfileWithRequestBuilder(active: String, file: URL, name: String) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/library/custom-profiles"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "active": active.encodeToJSON(),
            "file": file.encodeToJSON(),
            "name": name.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete Custom Profile
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteCustomProfile(libraryItemId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteCustomProfileWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
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
     - <p>NOTICE: This is permanent so be careful.</p> <p>This endpoint sends a request to delete a specific custom profile from the Kandji library.</p>  <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Allow(String), Content-Length(String), Content-Security-Policy(String), Cross-Origin-Opener-Policy(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#30379637-30be-4aab-89e2-481329354f3e
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteCustomProfileWithRequestBuilder(libraryItemId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/library/custom-profiles/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Custom Profile
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getCustomProfile(libraryItemId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getCustomProfileWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
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
     - responseHeaders: [Allow(String), Content-Length(String), Content-Security-Policy(String), Content-Type(String), Cross-Origin-Opener-Policy(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#0bad08d1-6a46-40b8-941b-d106fba6851a
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getCustomProfileWithRequestBuilder(libraryItemId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/custom-profiles/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List Custom Profiles
     
     - parameter page: (query) Optional page number (when results exceed pagination threshold) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listCustomProfiles(page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return listCustomProfilesWithRequestBuilder(page: page).execute(apiResponseQueue) { result in
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
     - responseHeaders: [Allow(String), Content-Length(String), Content-Security-Policy(String), Content-Type(String), Cross-Origin-Opener-Policy(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#6ab7e166-e758-454f-b43e-200537097a92
}
     - parameter page: (query) Optional page number (when results exceed pagination threshold) (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func listCustomProfilesWithRequestBuilder(page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/library/custom-profiles"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update Custom Profile
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateCustomProfile(libraryItemId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return updateCustomProfileWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
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
     - <p>This request allows you to update a custom profile in the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3>  <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Allow(String), Content-Length(String), Content-Security-Policy(String), Content-Type(String), Cross-Origin-Opener-Policy(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#57cf8ffc-d8b9-4ac0-b6a9-0a792bb661df
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func updateCustomProfileWithRequestBuilder(libraryItemId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/custom-profiles/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
