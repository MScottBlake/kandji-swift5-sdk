//
// AutomatedDeviceEnrollmentIntegrationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AutomatedDeviceEnrollmentIntegrationsAPI {

    /**
     Create ADE integration
     
     - parameter blueprintId: (form)  
     - parameter email: (form)  
     - parameter file: (form) This is the MDM server token file(.p7m) download from ABM. Once downloaded from ABM, the file can be uploaded via API. 
     - parameter phone: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createAdeIntegration(blueprintId: String, email: String, file: URL, phone: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return createAdeIntegrationWithRequestBuilder(blueprintId: blueprintId, email: email, file: file, phone: phone).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create ADE integration
     - POST /api/v1/integrations/apple/ade/
     - <p>This request will create a new ADE integration.</p> <p>The default <code>blueprint_id</code>, <code>phone</code> number, <code>email</code> address, and MDM server token <code>file</code> downloaded from ABM are required and must be sent in the request.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Allow(String), Connection(String), Content-Length(String), Content-Security-Policy(String), Content-Type(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Strict-Transport-Security(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String), X-XSS-Protection(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#fc2f0c91-d891-44f1-b6a1-b67d76c21010
}
     - parameter blueprintId: (form)  
     - parameter email: (form)  
     - parameter file: (form) This is the MDM server token file(.p7m) download from ABM. Once downloaded from ABM, the file can be uploaded via API. 
     - parameter phone: (form)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func createAdeIntegrationWithRequestBuilder(blueprintId: String, email: String, file: URL, phone: String) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/integrations/apple/ade/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "blueprint_id": blueprintId.encodeToJSON(),
            "email": email.encodeToJSON(),
            "file": file.encodeToJSON(),
            "phone": phone.encodeToJSON(),
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
     Delete ADE integration
     
     - parameter adeTokenId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteAdeIntegration(adeTokenId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteAdeIntegrationWithRequestBuilder(adeTokenId: adeTokenId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete ADE integration
     - DELETE /api/v1/integrations/apple/ade/{ade_token_id}
     - <h1 id=&quot;warning&quot;><strong>WARNING!</strong></h1> <p>This is a HIGHLY destructive action.</p> <p>Deleting an ADE token will unassign the associated device records from Kandji. For currently enrolled devices that were assigned to Kandji via the delete ADE integration will not be impacted until they are wiped and reprovisioned. This action is essentially the same as removing an ADE token from MDM and then adding it back.</p> <p>If applicable, be sure to reassign the device records in ABM.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Allow(String), Connection(String), Content-Security-Policy(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Set-Cookie(String), Strict-Transport-Security(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String), X-Xss-Protection(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#53084811-3e1c-4e71-aa59-71472468c26b
}
     - parameter adeTokenId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAdeIntegrationWithRequestBuilder(adeTokenId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/integrations/apple/ade/{ade_token_id}"
        let adeTokenIdPreEscape = "\(APIHelper.mapValueToPathItem(adeTokenId))"
        let adeTokenIdPostEscape = adeTokenIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ade_token_id}", with: adeTokenIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Download ADE public key
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func downloadAdePublicKey(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: String?, _ error: Error?) -> Void)) -> RequestTask {
        return downloadAdePublicKeyWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Download ADE public key
     - GET /api/v1/integrations/apple/ade/public_key/
     - <p>This request returns the public key used to create an MDM server connection in Apple Business Manager.</p> <p>The encoded information needs to be saved to a file with the <code>.pem</code> format and then uploaded to ABM.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Allow(String), Connection(String), Content-Length(String), Content-Security-Policy(String), Content-Type(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Set-Cookie(String), Strict-Transport-Security(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String), X-Xss-Protection(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#73083412-967b-4a97-a97c-ddf8cb4d0405
}
     - returns: RequestBuilder<String> 
     */
    open class func downloadAdePublicKeyWithRequestBuilder() -> RequestBuilder<String> {
        let localVariablePath = "/api/v1/integrations/apple/ade/public_key/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get ADE device
     
     - parameter deviceId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAdeDevice(deviceId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return getAdeDeviceWithRequestBuilder(deviceId: deviceId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get ADE device
     - GET /api/v1/integrations/apple/ade/devices/{device_id}
     - Get information about a specific Automated Device Enrollment device.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Content-Type(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#e77e952f-5138-4175-821d-820eaacd66ce
}
     - parameter deviceId: (path)  
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func getAdeDeviceWithRequestBuilder(deviceId: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/integrations/apple/ade/devices/{device_id}"
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{device_id}", with: deviceIdPostEscape, options: .literal, range: nil)
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
     Get ADE integration
     
     - parameter adeTokenId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getAdeIntegration(adeTokenId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return getAdeIntegrationWithRequestBuilder(adeTokenId: adeTokenId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get ADE integration
     - GET /api/v1/integrations/apple/ade/{ade_token_id}
     - This request returns a specific ADE integration based on the <code>ade_token_id</code> passed.
     - Bearer Token:
       - type: http
       - name: bearer
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#da9a056c-6ac4-4740-8bbb-391bc8a729b6
}
     - parameter adeTokenId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func getAdeIntegrationWithRequestBuilder(adeTokenId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/integrations/apple/ade/{ade_token_id}"
        let adeTokenIdPreEscape = "\(APIHelper.mapValueToPathItem(adeTokenId))"
        let adeTokenIdPostEscape = adeTokenIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ade_token_id}", with: adeTokenIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List ADE devices
     
     - parameter blueprintId: (query) Return results &amp;quot;containing&amp;quot; the specified blueprint id (optional)
     - parameter userId: (query) &amp;quot;exact&amp;quot; match on kandji user ID number (optional)
     - parameter depAccount: (query) The ADE token UUID (optional)
     - parameter deviceFamily: (query) Mac, iPhone, iPad, AppleTV, iPod (optional)
     - parameter model: (query) Return model results &amp;quot;containing&amp;quot; the specified model string. - &amp;quot;iPad (8th Generation)&amp;quot;, &amp;quot;MacBook Air&amp;quot; (optional)
     - parameter os: (query) OSX, iOS, tvOS (optional)
     - parameter profileStatus: (query) The automated device enrollment profile assignment status - assigned, empty, pushed, removed (optional)
     - parameter serialNumber: (query) Search for a specific device by Serial Number. If partial serial number is provided in the query, all device containing the partial string will be returned. (optional)
     - parameter page: (query) Use the &lt;code&gt;page&lt;/code&gt; parameter to page through results or to request a specific page. By default, if a page is not specified, page 1 is returned. Note: 300 device records are returned per page of results. Alternatively, the &lt;code&gt;next&lt;/code&gt; and &lt;code&gt;previous&lt;/code&gt; key attributes in the response can be used to request the next page of results or return to the previous page. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listAdeDevices(blueprintId: String? = nil, userId: String? = nil, depAccount: String? = nil, deviceFamily: String? = nil, model: String? = nil, os: String? = nil, profileStatus: String? = nil, serialNumber: String? = nil, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return listAdeDevicesWithRequestBuilder(blueprintId: blueprintId, userId: userId, depAccount: depAccount, deviceFamily: deviceFamily, model: model, os: os, profileStatus: profileStatus, serialNumber: serialNumber, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List ADE devices
     - GET /api/v1/integrations/apple/ade/devices
     - Get a list of Automated Device Enrollment devices.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Content-Type(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#c5dfa94c-d75d-46de-918e-44249bd40134
}
     - parameter blueprintId: (query) Return results &amp;quot;containing&amp;quot; the specified blueprint id (optional)
     - parameter userId: (query) &amp;quot;exact&amp;quot; match on kandji user ID number (optional)
     - parameter depAccount: (query) The ADE token UUID (optional)
     - parameter deviceFamily: (query) Mac, iPhone, iPad, AppleTV, iPod (optional)
     - parameter model: (query) Return model results &amp;quot;containing&amp;quot; the specified model string. - &amp;quot;iPad (8th Generation)&amp;quot;, &amp;quot;MacBook Air&amp;quot; (optional)
     - parameter os: (query) OSX, iOS, tvOS (optional)
     - parameter profileStatus: (query) The automated device enrollment profile assignment status - assigned, empty, pushed, removed (optional)
     - parameter serialNumber: (query) Search for a specific device by Serial Number. If partial serial number is provided in the query, all device containing the partial string will be returned. (optional)
     - parameter page: (query) Use the &lt;code&gt;page&lt;/code&gt; parameter to page through results or to request a specific page. By default, if a page is not specified, page 1 is returned. Note: 300 device records are returned per page of results. Alternatively, the &lt;code&gt;next&lt;/code&gt; and &lt;code&gt;previous&lt;/code&gt; key attributes in the response can be used to request the next page of results or return to the previous page. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func listAdeDevicesWithRequestBuilder(blueprintId: String? = nil, userId: String? = nil, depAccount: String? = nil, deviceFamily: String? = nil, model: String? = nil, os: String? = nil, profileStatus: String? = nil, serialNumber: String? = nil, page: String? = nil) -> RequestBuilder<AnyCodable> {
        let localVariablePath = "/api/v1/integrations/apple/ade/devices"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "blueprint_id": (wrappedValue: blueprintId?.encodeToJSON(), isExplode: true),
            "user_id": (wrappedValue: userId?.encodeToJSON(), isExplode: true),
            "dep_account": (wrappedValue: depAccount?.encodeToJSON(), isExplode: true),
            "device_family": (wrappedValue: deviceFamily?.encodeToJSON(), isExplode: true),
            "model": (wrappedValue: model?.encodeToJSON(), isExplode: true),
            "os": (wrappedValue: os?.encodeToJSON(), isExplode: true),
            "profile_status": (wrappedValue: profileStatus?.encodeToJSON(), isExplode: true),
            "serial_number": (wrappedValue: serialNumber?.encodeToJSON(), isExplode: true),
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
     List ADE integrations
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listAdeIntegrations(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return listAdeIntegrationsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List ADE integrations
     - GET /api/v1/integrations/apple/ade
     - This request returns a list of configured ADE integrations.
     - Bearer Token:
       - type: http
       - name: bearer
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#c9497b45-94ab-43fa-b40b-cd1caa8bf4db
}
     - returns: RequestBuilder<Void> 
     */
    open class func listAdeIntegrationsWithRequestBuilder() -> RequestBuilder<Void> {
        let localVariablePath = "/api/v1/integrations/apple/ade"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     List devices associated to ADE token
     
     - parameter adeTokenId: (path)  
     - parameter page: (query) Use the &lt;code&gt;page&lt;/code&gt; parameter to page through results or to request a specific page. By default, if a page is not specified, page 1 is returned. Note: 300 device records are returned per page of results. Alternatively, the &lt;code&gt;next&lt;/code&gt; and &lt;code&gt;previous&lt;/code&gt; key attributes in the response can be used to request the next page of results or return to the previous page. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listDevicesAssociatedToAdeToken(adeTokenId: String, page: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return listDevicesAssociatedToAdeTokenWithRequestBuilder(adeTokenId: adeTokenId, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List devices associated to ADE token
     - GET /api/v1/integrations/apple/ade/{ade_token_id}/devices
     - <p>This request returns a list of devices associated with a specified <code>ade_token_id</code> as well as their enrollment status.</p> <p>When the <code>mdm_device</code> key value is <code>null</code>, this can be taken as an indication that the device is awaiting enrollment into Kandji.</p>  <p>When data is present within the mdm_device dictionary, you can reference the <code>device_id</code> as the ID of the enrolled device record.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Allow(String), Connection(String), Content-Length(String), Content-Security-Policy(String), Content-Type(String), Date(String), Feature-Policy(String), Referrer-Policy(String), Server(String), Set-Cookie(String), Strict-Transport-Security(String), Vary(String), X-Content-Type-Options(String), X-Frame-Options(String), X-Xss-Protection(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#3e2d4aaf-7cc5-44b0-9ca8-4d26a4d63b78
}
     - parameter adeTokenId: (path)  
     - parameter page: (query) Use the &lt;code&gt;page&lt;/code&gt; parameter to page through results or to request a specific page. By default, if a page is not specified, page 1 is returned. Note: 300 device records are returned per page of results. Alternatively, the &lt;code&gt;next&lt;/code&gt; and &lt;code&gt;previous&lt;/code&gt; key attributes in the response can be used to request the next page of results or return to the previous page. (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func listDevicesAssociatedToAdeTokenWithRequestBuilder(adeTokenId: String, page: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/integrations/apple/ade/{ade_token_id}/devices"
        let adeTokenIdPreEscape = "\(APIHelper.mapValueToPathItem(adeTokenId))"
        let adeTokenIdPostEscape = adeTokenIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ade_token_id}", with: adeTokenIdPostEscape, options: .literal, range: nil)
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
     Renew ADE integration
     
     - parameter adeTokenId: (path)  
     - parameter blueprintId: (form)  
     - parameter email: (form)  
     - parameter file: (form) This is the MDM server token file(.p7m) download from ABM. Once downloaded from ABM, the file can be uploaded via API. 
     - parameter phone: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func renewAdeIntegration(adeTokenId: String, blueprintId: String, email: String, file: URL, phone: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return renewAdeIntegrationWithRequestBuilder(adeTokenId: adeTokenId, blueprintId: blueprintId, email: email, file: file, phone: phone).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Renew ADE integration
     - POST /api/v1/integrations/apple/ade/{ade_token_id}/renew
     - <p>This request will renew an existing ADE integration.</p>  <p>The default <code>blueprint_id</code>, <code>phone</code> number, <code>email</code> address, and MDM server token <code>file</code> from the associated MDM server in ABM are required and must be sent in the request.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#8b34294c-fb94-462b-9711-5164d998e25f
}
     - parameter adeTokenId: (path)  
     - parameter blueprintId: (form)  
     - parameter email: (form)  
     - parameter file: (form) This is the MDM server token file(.p7m) download from ABM. Once downloaded from ABM, the file can be uploaded via API. 
     - parameter phone: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func renewAdeIntegrationWithRequestBuilder(adeTokenId: String, blueprintId: String, email: String, file: URL, phone: String) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/integrations/apple/ade/{ade_token_id}/renew"
        let adeTokenIdPreEscape = "\(APIHelper.mapValueToPathItem(adeTokenId))"
        let adeTokenIdPostEscape = adeTokenIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ade_token_id}", with: adeTokenIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "blueprint_id": blueprintId.encodeToJSON(),
            "email": email.encodeToJSON(),
            "file": file.encodeToJSON(),
            "phone": phone.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "multipart/form-data",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update ADE device
     
     - parameter deviceId: (path)  
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateAdeDevice(deviceId: String, body: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return updateAdeDeviceWithRequestBuilder(deviceId: deviceId, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update ADE device
     - PATCH /api/v1/integrations/apple/ade/devices/{device_id}
     - <p>Update a specific Automated Device Enrollment device's blueprint assignment, user assignment, and asset tag.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>device_id</code> (path parameter): The unique identifier of the device.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Content-Type(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#a85042fd-f5d1-4b10-a312-0cccbcdea8d0
}
     - parameter deviceId: (path)  
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func updateAdeDeviceWithRequestBuilder(deviceId: String, body: String? = nil) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/api/v1/integrations/apple/ade/devices/{device_id}"
        let deviceIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceId))"
        let deviceIdPostEscape = deviceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{device_id}", with: deviceIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update ADE integration
     
     - parameter adeTokenId: (path)  
     - parameter body: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateAdeIntegration(adeTokenId: String, body: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return updateAdeIntegrationWithRequestBuilder(adeTokenId: adeTokenId, body: body).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update ADE integration
     - PATCH /api/v1/integrations/apple/ade/{ade_token_id}
     - <p>This request will update the default blueprint, phone number, and email address in an existing ADE integration.</p> <p>The default <code>blueprint_id</code>, <code>phone</code> number, and <code>email</code> address must be sent in the request.</p>
     - Bearer Token:
       - type: http
       - name: bearer
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#30eafa91-5589-4e44-9d5a-1683f7e0b3ed
}
     - parameter adeTokenId: (path)  
     - parameter body: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updateAdeIntegrationWithRequestBuilder(adeTokenId: String, body: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/api/v1/integrations/apple/ade/{ade_token_id}"
        let adeTokenIdPreEscape = "\(APIHelper.mapValueToPathItem(adeTokenId))"
        let adeTokenIdPostEscape = adeTokenIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ade_token_id}", with: adeTokenIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
