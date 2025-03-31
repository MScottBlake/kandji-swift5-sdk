//
// AuditLogAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

extension kandji_sdkAPI {


@objcMembers open class AuditLogAPI : NSObject {

    /**
     List audit events
     
     - parameter limit: (query) A max upper &lt;code&gt;limit&lt;/code&gt; is set at 500 records returned per request. Pagination should be used using the cursor in the &lt;code&gt;next&lt;/code&gt; key to request more results. Additionally, parameter queries can be added to a request to filter the results. 
     - parameter sortBy: (query) Sort results by &lt;code&gt;occurred_at&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt; either ascending (default behavior) or descending(-) order. 
     - parameter startDate: (query) Filter by start date in datetime or year-month-day (2024-11-26) formats (optional)
     - parameter endDate: (query) Filter by start date in datetime or year-month-day (2024-12-06) formats (optional)
     - parameter cursor: (query) You can pass the next cursor as a parameter or use the URL in the next key to get the next page of results or to start from where you left off last. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func listAuditEvents(limit: String, sortBy: String, startDate: String? = nil, endDate: String? = nil, cursor: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: AuditLogListAuditEvents200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return listAuditEventsWithRequestBuilder(limit: limit, sortBy: sortBy, startDate: startDate, endDate: endDate, cursor: cursor).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List audit events
     - GET /api/v1/audit/events
     - <p>List audit log events from the Kandji Activity module.</p> <p>Returns events related to</p> <ul> <li><p>Blueprint and Library Item creation, updates, and deletions (CUD)</p> </li> <li><p>Access to sensitive data (such as FileVault keys and recovery keys)</p> </li> <li><p>Device lifecycle events (enrollment, deletion, MDM removal, blueprint changes)</p> </li> <li><p>User directory events (including directory user deletions)</p> </li> <li><p>Administrative actions (tenant owner updates, API token management (CUD))</p> </li> <li><p>Admin user management activities</p> </li> <li><p>Vulnerability management detections and remediations (for customers with this feature)</p> </li> </ul>
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Content-Type(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#06022d9d-426b-4aea-826a-d7f084e4f1e3
}
     - parameter limit: (query) A max upper &lt;code&gt;limit&lt;/code&gt; is set at 500 records returned per request. Pagination should be used using the cursor in the &lt;code&gt;next&lt;/code&gt; key to request more results. Additionally, parameter queries can be added to a request to filter the results. 
     - parameter sortBy: (query) Sort results by &lt;code&gt;occurred_at&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt; either ascending (default behavior) or descending(-) order. 
     - parameter startDate: (query) Filter by start date in datetime or year-month-day (2024-11-26) formats (optional)
     - parameter endDate: (query) Filter by start date in datetime or year-month-day (2024-12-06) formats (optional)
     - parameter cursor: (query) You can pass the next cursor as a parameter or use the URL in the next key to get the next page of results or to start from where you left off last. (optional)
     - returns: RequestBuilder<AuditLogListAuditEvents200Response> 
     */
    open class func listAuditEventsWithRequestBuilder(limit: String, sortBy: String, startDate: String? = nil, endDate: String? = nil, cursor: String? = nil) -> RequestBuilder<AuditLogListAuditEvents200Response> {
        let localVariablePath = "/api/v1/audit/events"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": (wrappedValue: limit.encodeToJSON(), isExplode: true),
            "sort_by": (wrappedValue: sortBy.encodeToJSON(), isExplode: true),
            "start_date": (wrappedValue: startDate?.encodeToJSON(), isExplode: true),
            "end_date": (wrappedValue: endDate?.encodeToJSON(), isExplode: true),
            "cursor": (wrappedValue: cursor?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuditLogListAuditEvents200Response>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
}
