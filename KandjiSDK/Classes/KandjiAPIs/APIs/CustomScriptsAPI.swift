//
// CustomScriptsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

extension kandji_sdkAPI {


@objcMembers open class CustomScriptsAPI : NSObject {

    /**
     Create Custom Script
     
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createCustomScript(body: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return createCustomScriptWithRequestBuilder(body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Custom Script
     - POST /api/v1/library/custom-scripts
     - This request allows you to create a custom script in the Kandji library.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#a5d0c211-d971-4698-a5ac-42e90e296b59
}
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func createCustomScriptWithRequestBuilder(body: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/library/custom-scripts"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete Custom Script
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteCustomScript(libraryItemId: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteCustomScriptWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Custom Script
     - DELETE /api/v1/library/custom-scripts/{library_item_id}
     - <p>NOTICE: This is permanent so be careful.</p> <p>This endpoint sends a request to delete a specific custom scripts from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#4eb17317-d1cb-4c77-babe-80e27867711f
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteCustomScriptWithRequestBuilder(libraryItemId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/library/custom-scripts/{library_item_id}"
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
     Get Custom Script
     
     - parameter libraryItemId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getCustomScript(libraryItemId: String, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getCustomScriptWithRequestBuilder(libraryItemId: libraryItemId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Custom Script
     - GET /api/v1/library/custom-scripts/{library_item_id}
     - <p>This endpoint retrieves details about a specific custom script from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Date(String), Server(String), Content-Type(String), Allow(String), X-Frame-Options(String), Content-Length(String), X-Content-Type-Options(String), Referrer-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Vary(String), Content-Security-Policy(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#68fc55c7-847d-440e-9870-9fd421d20f4f
}
     - parameter libraryItemId: (path)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getCustomScriptWithRequestBuilder(libraryItemId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/custom-scripts/{library_item_id}"
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
     List Custom Scripts
     
     - parameter page: (query) Optional page number. Used when results exceed pagination threshold. A hard upper limit is set at 300 device records returned per request. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listCustomScripts(page: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return listCustomScriptsWithRequestBuilder(page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List Custom Scripts
     - GET /api/v1/library/custom-scripts
     - This endpoint makes a request to retrieve a list of custom scripts from the Kandji library.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Connection(String), Content-Type(String), Allow(String), Content-Encoding(String), Content-Security-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Ratelimit-Limit(String), Ratelimit-Remaining(String), Ratelimit-Reset(String), Referrer-Policy(String), Server(String), Strict-Transport-Security(String), Via(String), X-Content-Type-Options(String), X-Frame-Options(String), X-Kong-Proxy-Latency(String), X-Kong-Upstream-Latency(String), X-Ratelimit-Limit-Hour(String), X-Ratelimit-Limit-Second(String), X-Ratelimit-Remaining-Hour(String), X-Ratelimit-Remaining-Second(String), Accept-Ranges(String), Access-Control-Allow-Origin(String), Date(String), X-Served-By(String), X-Cache(String), X-Cache-Hits(String), X-Timer(String), Vary(String), transfer-encoding(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#6c8acf81-96fd-4859-a508-e191d632ce64
}
     - parameter page: (query) Optional page number. Used when results exceed pagination threshold. A hard upper limit is set at 300 device records returned per request. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func listCustomScriptsWithRequestBuilder(page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/library/custom-scripts"
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
     Update Custom Script
     
     - parameter libraryItemId: (path)  
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateCustomScript(libraryItemId: String, body: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return updateCustomScriptWithRequestBuilder(libraryItemId: libraryItemId, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Custom Script
     - PATCH /api/v1/library/custom-scripts/{library_item_id}
     - This request allows you to update a custom script in the Kandji library.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Connection(String), Content-Type(String), Allow(String), Content-Encoding(String), Content-Security-Policy(String), Cross-Origin-Opener-Policy(String), Feature-Policy(String), Ratelimit-Limit(String), Ratelimit-Remaining(String), Ratelimit-Reset(String), Referrer-Policy(String), Server(String), Strict-Transport-Security(String), Via(String), X-Content-Type-Options(String), X-Frame-Options(String), X-Kong-Proxy-Latency(String), X-Kong-Upstream-Latency(String), X-Ratelimit-Limit-Hour(String), X-Ratelimit-Limit-Second(String), X-Ratelimit-Remaining-Hour(String), X-Ratelimit-Remaining-Second(String), Accept-Ranges(String), Access-Control-Allow-Origin(String), Date(String), X-Served-By(String), X-Cache(String), X-Cache-Hits(String), X-Timer(String), Vary(String), transfer-encoding(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#f807c43a-209d-4c8a-b6ce-22ccecd3a683
}
     - parameter libraryItemId: (path)  
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func updateCustomScriptWithRequestBuilder(libraryItemId: String, body: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/library/custom-scripts/{library_item_id}"
        let libraryItemIdPreEscape = "\(APIHelper.mapValueToPathItem(libraryItemId))"
        let libraryItemIdPostEscape = libraryItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{library_item_id}", with: libraryItemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
}
