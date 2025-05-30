//
// ThreatsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

extension kandji_sdkAPI {


@objcMembers open class ThreatsAPI : NSObject {

    /**
     Get Behavioral Detections
     
     - parameter threatId: (query) Filter by a specific threat ID (threat_id&#x3D;Kandji_BD_0096). (optional)
     - parameter classification: (query) Filter by threat classification (classification&#x3D;malicious). (optional)
     - parameter status: (query) Filter by threat status (threat_status&#x3D;blocked) (optional)
     - parameter dateRange: (query) Return all records within a specified number of days (Int) (optional)
     - parameter detectionDate: (query) two query params detection_date_from and detection_date_to (optional)
     - parameter deviceId: (query) Search for a specific device by the device id (uuid). (optional)
     - parameter malwareFamily: (query) Filter by malware family (malware_family&#x3D;TrickBot). (optional)
     - parameter parentProcessName: (query) Filter by parent process (parent_process_name&#x3D;bash). (optional)
     - parameter targetProcessName: (query) Filter by target process (target_process_name&#x3D;python). (optional)
     - parameter informationalTags: (query) Filter by tags (informational_tags&#x3D;exploit,privilege_escalation). (optional)
     - parameter term: (query) Search term to filter threat results. Device name, file hash, image path (optional)
     - parameter sortBy: (query) &lt;p&gt;Detections can be sorted by any of the following keys. Prepending a dash (-) to the parameter value will reverse the order of the returned results. ?sort_by&#x3D;-device_name will order the response by device_name in descending order.&lt;/p&gt; &lt;ul&gt; &lt;li&gt;threat_id&lt;/li&gt; &lt;li&gt;classification&lt;/li&gt; &lt;li&gt;device_name&lt;/li&gt; &lt;li&gt;parent_process_name&lt;/li&gt; &lt;li&gt;target_process_name&lt;/li&gt; &lt;li&gt;detection_date&lt;/li&gt; &lt;li&gt;status&lt;/li&gt; &lt;/ul&gt; (optional)
     - parameter limit: (query) A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 1000 records returned per request. If more records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters.  Additionally, parameter queries can be added to a request to limit the results. (optional)
     - parameter offset: (query) Specify the starting record to return. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getBehavioralDetections(threatId: String? = nil, classification: String? = nil, status: String? = nil, dateRange: String? = nil, detectionDate: String? = nil, deviceId: String? = nil, malwareFamily: String? = nil, parentProcessName: String? = nil, targetProcessName: String? = nil, informationalTags: String? = nil, term: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: ThreatsGetBehavioralDetections200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getBehavioralDetectionsWithRequestBuilder(threatId: threatId, classification: classification, status: status, dateRange: dateRange, detectionDate: detectionDate, deviceId: deviceId, malwareFamily: malwareFamily, parentProcessName: parentProcessName, targetProcessName: targetProcessName, informationalTags: informationalTags, term: term, sortBy: sortBy, limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Behavioral Detections
     - GET /api/v1/behavioral-detections
     - Get Behavioral Detections.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Content-Type(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#f376b345-8dc2-4ac6-97fd-0d81748e130f
}
     - parameter threatId: (query) Filter by a specific threat ID (threat_id&#x3D;Kandji_BD_0096). (optional)
     - parameter classification: (query) Filter by threat classification (classification&#x3D;malicious). (optional)
     - parameter status: (query) Filter by threat status (threat_status&#x3D;blocked) (optional)
     - parameter dateRange: (query) Return all records within a specified number of days (Int) (optional)
     - parameter detectionDate: (query) two query params detection_date_from and detection_date_to (optional)
     - parameter deviceId: (query) Search for a specific device by the device id (uuid). (optional)
     - parameter malwareFamily: (query) Filter by malware family (malware_family&#x3D;TrickBot). (optional)
     - parameter parentProcessName: (query) Filter by parent process (parent_process_name&#x3D;bash). (optional)
     - parameter targetProcessName: (query) Filter by target process (target_process_name&#x3D;python). (optional)
     - parameter informationalTags: (query) Filter by tags (informational_tags&#x3D;exploit,privilege_escalation). (optional)
     - parameter term: (query) Search term to filter threat results. Device name, file hash, image path (optional)
     - parameter sortBy: (query) &lt;p&gt;Detections can be sorted by any of the following keys. Prepending a dash (-) to the parameter value will reverse the order of the returned results. ?sort_by&#x3D;-device_name will order the response by device_name in descending order.&lt;/p&gt; &lt;ul&gt; &lt;li&gt;threat_id&lt;/li&gt; &lt;li&gt;classification&lt;/li&gt; &lt;li&gt;device_name&lt;/li&gt; &lt;li&gt;parent_process_name&lt;/li&gt; &lt;li&gt;target_process_name&lt;/li&gt; &lt;li&gt;detection_date&lt;/li&gt; &lt;li&gt;status&lt;/li&gt; &lt;/ul&gt; (optional)
     - parameter limit: (query) A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 1000 records returned per request. If more records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters.  Additionally, parameter queries can be added to a request to limit the results. (optional)
     - parameter offset: (query) Specify the starting record to return. (optional)
     - returns: RequestBuilder<ThreatsGetBehavioralDetections200Response> 
     */
    open class func getBehavioralDetectionsWithRequestBuilder(threatId: String? = nil, classification: String? = nil, status: String? = nil, dateRange: String? = nil, detectionDate: String? = nil, deviceId: String? = nil, malwareFamily: String? = nil, parentProcessName: String? = nil, targetProcessName: String? = nil, informationalTags: String? = nil, term: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil) -> RequestBuilder<ThreatsGetBehavioralDetections200Response> {
        let localVariablePath = "/api/v1/behavioral-detections"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "threat_id": (wrappedValue: threatId?.encodeToJSON(), isExplode: true),
            "classification": (wrappedValue: classification?.encodeToJSON(), isExplode: true),
            "status": (wrappedValue: status?.encodeToJSON(), isExplode: true),
            "date_range": (wrappedValue: dateRange?.encodeToJSON(), isExplode: true),
            "detection_date": (wrappedValue: detectionDate?.encodeToJSON(), isExplode: true),
            "device_id": (wrappedValue: deviceId?.encodeToJSON(), isExplode: true),
            "malware_family": (wrappedValue: malwareFamily?.encodeToJSON(), isExplode: true),
            "parent_process_name": (wrappedValue: parentProcessName?.encodeToJSON(), isExplode: true),
            "target_process_name": (wrappedValue: targetProcessName?.encodeToJSON(), isExplode: true),
            "informational_tags": (wrappedValue: informationalTags?.encodeToJSON(), isExplode: true),
            "term": (wrappedValue: term?.encodeToJSON(), isExplode: true),
            "sort_by": (wrappedValue: sortBy?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThreatsGetBehavioralDetections200Response>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Threat Details
     
     - parameter classification: (query) Return all records matching a specified classification. The following classification options are available: &lt;code&gt;malware&lt;/code&gt; and &lt;code&gt;pup&lt;/code&gt;. Leave this parameter empty to return all classification types. (optional)
     - parameter dateRange: (query) Return all records within a specified number of days. Any positive number of days may be specified. Examples: &lt;code&gt;7&lt;/code&gt;, &lt;code&gt;30&lt;/code&gt;, &lt;code&gt;60&lt;/code&gt;, &lt;code&gt;90&lt;/code&gt;, &lt;code&gt;180&lt;/code&gt;, or &lt;code&gt;365&lt;/code&gt;. (optional)
     - parameter deviceId: (query)  (optional)
     - parameter status: (query) Return all records matching a specified status. The following status options are available: &lt;code&gt;quarantined&lt;/code&gt;, &lt;code&gt;not_quarantined&lt;/code&gt;, or &lt;code&gt;released&lt;/code&gt;. Leave this parameter empty to return all status types. (optional)
     - parameter sortBy: (query) &lt;p&gt;Results can be sorted with the following options: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;threat_name&lt;/li&gt; &lt;li&gt;classification&lt;/li&gt; &lt;li&gt;device_name&lt;/li&gt; &lt;li&gt;process_name&lt;/li&gt; &lt;li&gt;process_owner&lt;/li&gt; &lt;li&gt;detection_date&lt;/li&gt; &lt;li&gt;status&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Prepending a dash (-) to the parameter value will reverse the order of the returned results.&lt;/p&gt; &lt;p&gt;&lt;code&gt;?sort_by&#x3D;-device_name&lt;/code&gt; will order the response by device_name in descending order.&lt;/p&gt; (optional)
     - parameter term: (query) &lt;p&gt;Search term to filter threat results.&lt;/p&gt; &lt;p&gt;The response will include anything matching the following fields: &lt;code&gt;device_name&lt;/code&gt;, &lt;code&gt;file_hash&lt;/code&gt;, and &lt;code&gt;file_path&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;So if you search for &lt;code&gt;bad file&lt;/code&gt;, the results will include anywhere &lt;code&gt;bad file&lt;/code&gt; exists in the three fields above.&lt;/p&gt; (optional)
     - parameter limit: (query) &lt;p&gt;A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 1000 records returned per request. If more records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. &lt;/p&gt; &lt;p&gt;Additionally, parameter queries can be added to a request to limit the results.&lt;/p&gt; (optional)
     - parameter offset: (query) Specify the starting record to return (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getThreatDetails(classification: String? = nil, dateRange: String? = nil, deviceId: String? = nil, status: String? = nil, sortBy: String? = nil, term: String? = nil, limit: String? = nil, offset: String? = nil, apiResponseQueue: DispatchQueue = kandji_sdkAPI.apiResponseQueue, completion: @escaping ((_ data: ThreatsGetThreatDetails200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getThreatDetailsWithRequestBuilder(classification: classification, dateRange: dateRange, deviceId: deviceId, status: status, sortBy: sortBy, term: term, limit: limit, offset: offset).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Threat Details
     - GET /api/v1/threat-details
     - Get threat details.
     - Bearer Token:
       - type: http
       - name: bearer
     - responseHeaders: [Content-Type(String)]
     - externalDocs: class ExternalDocumentation {
    description: null
    url: https://api-docs.kandji.io/#d041043a-ea47-47d5-b6f1-234ef422494d
}
     - parameter classification: (query) Return all records matching a specified classification. The following classification options are available: &lt;code&gt;malware&lt;/code&gt; and &lt;code&gt;pup&lt;/code&gt;. Leave this parameter empty to return all classification types. (optional)
     - parameter dateRange: (query) Return all records within a specified number of days. Any positive number of days may be specified. Examples: &lt;code&gt;7&lt;/code&gt;, &lt;code&gt;30&lt;/code&gt;, &lt;code&gt;60&lt;/code&gt;, &lt;code&gt;90&lt;/code&gt;, &lt;code&gt;180&lt;/code&gt;, or &lt;code&gt;365&lt;/code&gt;. (optional)
     - parameter deviceId: (query)  (optional)
     - parameter status: (query) Return all records matching a specified status. The following status options are available: &lt;code&gt;quarantined&lt;/code&gt;, &lt;code&gt;not_quarantined&lt;/code&gt;, or &lt;code&gt;released&lt;/code&gt;. Leave this parameter empty to return all status types. (optional)
     - parameter sortBy: (query) &lt;p&gt;Results can be sorted with the following options: &lt;/p&gt; &lt;ul&gt; &lt;li&gt;threat_name&lt;/li&gt; &lt;li&gt;classification&lt;/li&gt; &lt;li&gt;device_name&lt;/li&gt; &lt;li&gt;process_name&lt;/li&gt; &lt;li&gt;process_owner&lt;/li&gt; &lt;li&gt;detection_date&lt;/li&gt; &lt;li&gt;status&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Prepending a dash (-) to the parameter value will reverse the order of the returned results.&lt;/p&gt; &lt;p&gt;&lt;code&gt;?sort_by&#x3D;-device_name&lt;/code&gt; will order the response by device_name in descending order.&lt;/p&gt; (optional)
     - parameter term: (query) &lt;p&gt;Search term to filter threat results.&lt;/p&gt; &lt;p&gt;The response will include anything matching the following fields: &lt;code&gt;device_name&lt;/code&gt;, &lt;code&gt;file_hash&lt;/code&gt;, and &lt;code&gt;file_path&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;So if you search for &lt;code&gt;bad file&lt;/code&gt;, the results will include anywhere &lt;code&gt;bad file&lt;/code&gt; exists in the three fields above.&lt;/p&gt; (optional)
     - parameter limit: (query) &lt;p&gt;A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 1000 records returned per request. If more records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. &lt;/p&gt; &lt;p&gt;Additionally, parameter queries can be added to a request to limit the results.&lt;/p&gt; (optional)
     - parameter offset: (query) Specify the starting record to return (optional)
     - returns: RequestBuilder<ThreatsGetThreatDetails200Response> 
     */
    open class func getThreatDetailsWithRequestBuilder(classification: String? = nil, dateRange: String? = nil, deviceId: String? = nil, status: String? = nil, sortBy: String? = nil, term: String? = nil, limit: String? = nil, offset: String? = nil) -> RequestBuilder<ThreatsGetThreatDetails200Response> {
        let localVariablePath = "/api/v1/threat-details"
        let localVariableURLString = kandji_sdkAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "classification": (wrappedValue: classification?.encodeToJSON(), isExplode: true),
            "date_range": (wrappedValue: dateRange?.encodeToJSON(), isExplode: true),
            "device_id": (wrappedValue: deviceId?.encodeToJSON(), isExplode: true),
            "status": (wrappedValue: status?.encodeToJSON(), isExplode: true),
            "sort_by": (wrappedValue: sortBy?.encodeToJSON(), isExplode: true),
            "term": (wrappedValue: term?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "offset": (wrappedValue: offset?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ThreatsGetThreatDetails200Response>.Type = kandji_sdkAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
}
