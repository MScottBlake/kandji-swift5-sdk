# VulnerabilitiesAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVulnerabilityDescription**](VulnerabilitiesAPI.md#getvulnerabilitydescription) | **GET** /api/v1/vulnerability-management/vulnerabilities/{cve_id} | Get Vulnerability Description
[**listAffectedApplications**](VulnerabilitiesAPI.md#listaffectedapplications) | **GET** /api/v1/vulnerability-management/vulnerabilities/{cve_id}/applications | List Affected Applications
[**listAffectedDevices**](VulnerabilitiesAPI.md#listaffecteddevices) | **GET** /api/v1/vulnerability-management/vulnerabilities/{cve_id}/devices | List Affected Devices
[**listDetections**](VulnerabilitiesAPI.md#listdetections) | **GET** /api/v1/vulnerability-management/detections | List Detections
[**listVulnerabilities**](VulnerabilitiesAPI.md#listvulnerabilities) | **GET** /api/v1/vulnerability-management/vulnerabilities | List Vulnerabilities


# **getVulnerabilityDescription**
```swift
    open class func getVulnerabilityDescription(cveId: String, completion: @escaping (_ data: VulnerabilitiesGetVulnerabilityDescription200Response?, _ error: Error?) -> Void)
```

Get Vulnerability Description

This endpoint makes a request to retrieve information about a cve and summary information about detections for a tenants fleet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let cveId = "cveId_example" // String | 

// Get Vulnerability Description
VulnerabilitiesAPI.getVulnerabilityDescription(cveId: cveId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cveId** | **String** |  | 

### Return type

[**VulnerabilitiesGetVulnerabilityDescription200Response**](VulnerabilitiesGetVulnerabilityDescription200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAffectedApplications**
```swift
    open class func listAffectedApplications(cveId: String, page: String? = nil, size: String? = nil, sortBy: String? = nil, filter: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Affected Applications

This endpoint makes a request to retrieve a list of applications impacted by a specified <code>cve_id</code> vulnerability for a tenants fleet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let cveId = "cveId_example" // String | 
let page = "" // String | The page number of the response. (optional)
let size = "size_example" // String | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. (optional)
let sortBy = "sortBy_example" // String | Field to sort by. Example: sort_by=app_name. (optional)
let filter = "filter_example" // String | Filterable columns: blueprint_id updated_at (optional)

// List Affected Applications
VulnerabilitiesAPI.listAffectedApplications(cveId: cveId, page: page, size: size, sortBy: sortBy, filter: filter) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cveId** | **String** |  | 
 **page** | **String** | The page number of the response. | [optional] 
 **size** | **String** | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. | [optional] 
 **sortBy** | **String** | Field to sort by. Example: sort_by&#x3D;app_name. | [optional] 
 **filter** | **String** | Filterable columns: blueprint_id updated_at | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAffectedDevices**
```swift
    open class func listAffectedDevices(cveId: String, page: String? = nil, size: String? = nil, sortBy: String? = nil, filter: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Affected Devices

This endpoint makes a request to retrieve a list of devices impacted by a specified <code>cve_id</code> vulnerability for a tenants fleet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let cveId = "cveId_example" // String | 
let page = "" // String | The page number of the response. (optional)
let size = "size_example" // String | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. (optional)
let sortBy = "sortBy_example" // String | Field to sort by. Example: sort_by=app_name. (optional)
let filter = "filter_example" // String | Filterable columns: blueprint_id updated_at (optional)

// List Affected Devices
VulnerabilitiesAPI.listAffectedDevices(cveId: cveId, page: page, size: size, sortBy: sortBy, filter: filter) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cveId** | **String** |  | 
 **page** | **String** | The page number of the response. | [optional] 
 **size** | **String** | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. | [optional] 
 **sortBy** | **String** | Field to sort by. Example: sort_by&#x3D;app_name. | [optional] 
 **filter** | **String** | Filterable columns: blueprint_id updated_at | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDetections**
```swift
    open class func listDetections(after: String? = nil, limit: String? = nil, filter: String? = nil, completion: @escaping (_ data: VulnerabilitiesListDetections200Response?, _ error: Error?) -> Void)
```

List Detections

This endpoint makes a request to retrieve a list of all vulnerability detections across the device fleet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let after = "" // String | Cursor token. (optional)
let limit = "limit_example" // String | A hard upper <code>limit</code> is set at 300  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. (optional)
let filter = "filter_example" // String | Can filter on any key attribute within the response. (optional)

// List Detections
VulnerabilitiesAPI.listDetections(after: after, limit: limit, filter: filter) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String** | Cursor token. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. | [optional] 
 **filter** | **String** | Can filter on any key attribute within the response. | [optional] 

### Return type

[**VulnerabilitiesListDetections200Response**](VulnerabilitiesListDetections200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVulnerabilities**
```swift
    open class func listVulnerabilities(page: String? = nil, size: String? = nil, sortBy: String? = nil, filter: String? = nil, completion: @escaping (_ data: VulnerabilitiesListVulnerabilities200Response?, _ error: Error?) -> Void)
```

List Vulnerabilities

This endpoint makes a request to retrieve a list of all vulnerabilities grouped by cve.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let page = "" // String | The page number of the response. (optional)
let size = "size_example" // String | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. (optional)
let sortBy = "sortBy_example" // String | Field to sort by. Example: sort_by=cve_id. (optional)
let filter = "filter_example" // String | <p>Filterable columns:</p> <p>cve_id app_name severity first_detection_date latest_detection_date</p> (optional)

// List Vulnerabilities
VulnerabilitiesAPI.listVulnerabilities(page: page, size: size, sortBy: sortBy, filter: filter) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **String** | The page number of the response. | [optional] 
 **size** | **String** | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. | [optional] 
 **sortBy** | **String** | Field to sort by. Example: sort_by&#x3D;cve_id. | [optional] 
 **filter** | **String** | &lt;p&gt;Filterable columns:&lt;/p&gt; &lt;p&gt;cve_id app_name severity first_detection_date latest_detection_date&lt;/p&gt; | [optional] 

### Return type

[**VulnerabilitiesListVulnerabilities200Response**](VulnerabilitiesListVulnerabilities200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

