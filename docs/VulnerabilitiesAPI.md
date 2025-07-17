# VulnerabilitiesAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVulnerabilityDescription**](VulnerabilitiesAPI.md#getvulnerabilitydescription) | **GET** /api/v1/vulnerability-management/vulnerabilities/{cve_id} | Get Vulnerability Description
[**listAffectedApps**](VulnerabilitiesAPI.md#listaffectedapps) | **GET** /api/v1/vulnerability-management/vulnerabilities/{cve_id}/applications | List Affected Apps
[**listAffectedDevices**](VulnerabilitiesAPI.md#listaffecteddevices) | **GET** /api/v1/vulnerability-management/vulnerabilities/{cve_id}/devices | List Affected Devices
[**listDetections**](VulnerabilitiesAPI.md#listdetections) | **GET** /api/v1/vulnerability-management/detections | List Detections
[**listVulnerabilities**](VulnerabilitiesAPI.md#listvulnerabilities) | **GET** /api/v1/vulnerability-management/vulnerabilities | List Vulnerabilities


# **getVulnerabilityDescription**
```swift
    open class func getVulnerabilityDescription(cveId: String, completion: @escaping (_ data: VulnerabilitiesGetVulnerabilityDescription200Response?, _ error: Error?) -> Void)
```

Get Vulnerability Description

Retrieve information about a CVE.

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

# **listAffectedApps**
```swift
    open class func listAffectedApps(cveId: String, page: String? = nil, size: String? = nil, sortBy: String? = nil, filter: String? = nil, completion: @escaping (_ data: VulnerabilitiesListAffectedApps200Response?, _ error: Error?) -> Void)
```

List Affected Apps

This endpoint makes a request to retrieve a list of applications impacted by a specified <code>cve_id</code> vulnerability for a tenants fleet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let cveId = "cveId_example" // String | 
let page = "" // String | The page number of the response. (optional)
let size = "size_example" // String | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. (optional)
let sortBy = "sortBy_example" // String | Field to sort by. Example: sort_by=app_name. (optional)
let filter = "filter_example" // String | <p>Filterable columns:</p> <ul> <li>blueprint_id</li> <li>created_at</li> </ul> (optional)

// List Affected Apps
VulnerabilitiesAPI.listAffectedApps(cveId: cveId, page: page, size: size, sortBy: sortBy, filter: filter) { (response, error) in
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
 **filter** | **String** | &lt;p&gt;Filterable columns:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;blueprint_id&lt;/li&gt; &lt;li&gt;created_at&lt;/li&gt; &lt;/ul&gt; | [optional] 

### Return type

[**VulnerabilitiesListAffectedApps200Response**](VulnerabilitiesListAffectedApps200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAffectedDevices**
```swift
    open class func listAffectedDevices(cveId: String, page: String? = nil, size: String? = nil, sortBy: String? = nil, filter: String? = nil, completion: @escaping (_ data: VulnerabilitiesListAffectedApps200Response?, _ error: Error?) -> Void)
```

List Affected Devices

Retrieve a list of devices impacted by a specified <code>cve_id</code> vulnerability for a tenants fleet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let cveId = "cveId_example" // String | 
let page = "" // String | The page number of the response. (optional)
let size = "size_example" // String | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. (optional)
let sortBy = "sortBy_example" // String | Field to sort by. Example: sort_by=app_name. (optional)
let filter = "filter_example" // String | <p>Filterable columns:</p> <ul> <li>blueprint_id</li> <li>detection_datetime</li> </ul> (optional)

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
 **filter** | **String** | &lt;p&gt;Filterable columns:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;blueprint_id&lt;/li&gt; &lt;li&gt;detection_datetime&lt;/li&gt; &lt;/ul&gt; | [optional] 

### Return type

[**VulnerabilitiesListAffectedApps200Response**](VulnerabilitiesListAffectedApps200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDetections**
```swift
    open class func listDetections(after: String? = nil, size: String? = nil, filter: String? = nil, completion: @escaping (_ data: VulnerabilitiesListDetections200Response?, _ error: Error?) -> Void)
```

List Detections

Retrieve a list of all vulnerability detections across the device fleet.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let after = "" // String | Cursor token. (optional)
let size = "size_example" // String | A hard upper <code>limit</code> is set at 300  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. (optional)
let filter = "filter_example" // String | <p>Filter on any key attribute within the response.</p> <ul> <li>device_id</li> <li>device_name</li> <li>device_serial_number</li> <li>device_model</li> <li>device_os_version</li> <li>blueprint_id</li> <li>blueprint_name</li> <li>name</li> <li>path</li> <li>version</li> <li>bundle_id</li> <li>cve_id</li> <li>cve_description</li> <li>cve_link</li> <li>cvss_score</li> <li>cvss_severity</li> <li>detection_datetime</li> <li>cve_published_at</li> <li>cve_modified_at</li> </ul> (optional)

// List Detections
VulnerabilitiesAPI.listDetections(after: after, size: size, filter: filter) { (response, error) in
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
 **size** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. | [optional] 
 **filter** | **String** | &lt;p&gt;Filter on any key attribute within the response.&lt;/p&gt; &lt;ul&gt; &lt;li&gt;device_id&lt;/li&gt; &lt;li&gt;device_name&lt;/li&gt; &lt;li&gt;device_serial_number&lt;/li&gt; &lt;li&gt;device_model&lt;/li&gt; &lt;li&gt;device_os_version&lt;/li&gt; &lt;li&gt;blueprint_id&lt;/li&gt; &lt;li&gt;blueprint_name&lt;/li&gt; &lt;li&gt;name&lt;/li&gt; &lt;li&gt;path&lt;/li&gt; &lt;li&gt;version&lt;/li&gt; &lt;li&gt;bundle_id&lt;/li&gt; &lt;li&gt;cve_id&lt;/li&gt; &lt;li&gt;cve_description&lt;/li&gt; &lt;li&gt;cve_link&lt;/li&gt; &lt;li&gt;cvss_score&lt;/li&gt; &lt;li&gt;cvss_severity&lt;/li&gt; &lt;li&gt;detection_datetime&lt;/li&gt; &lt;li&gt;cve_published_at&lt;/li&gt; &lt;li&gt;cve_modified_at&lt;/li&gt; &lt;/ul&gt; | [optional] 

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
    open class func listVulnerabilities(page: String? = nil, size: String? = nil, sortBy: String? = nil, filter: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Vulnerabilities

Retrieve a list of all vulnerabilities grouped by cve.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let page = "" // String | The page number of the response. (optional)
let size = "size_example" // String | A hard upper limit is set at 50  records returned per request. If more records are expected, pagination should be used using the URL value returned in the next attribute. Additionally, filters can be added to a request to limit the results. (optional)
let sortBy = "sortBy_example" // String | <p>Field to sort by.</p> <ul> <li>cve_id</li> <li>software (the name of the software)</li> <li>cvss_severity</li> <li>first_detection_date</li> <li>latest_detection_date</li> </ul> (optional)
let filter = "filter_example" // String | <p>Filterable columns</p> <ul> <li>cve_id</li> <li>app_name</li> <li>severity</li> <li>first_detection_date</li> <li>latest_detection_date</li> </ul> (optional)

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
 **sortBy** | **String** | &lt;p&gt;Field to sort by.&lt;/p&gt; &lt;ul&gt; &lt;li&gt;cve_id&lt;/li&gt; &lt;li&gt;software (the name of the software)&lt;/li&gt; &lt;li&gt;cvss_severity&lt;/li&gt; &lt;li&gt;first_detection_date&lt;/li&gt; &lt;li&gt;latest_detection_date&lt;/li&gt; &lt;/ul&gt; | [optional] 
 **filter** | **String** | &lt;p&gt;Filterable columns&lt;/p&gt; &lt;ul&gt; &lt;li&gt;cve_id&lt;/li&gt; &lt;li&gt;app_name&lt;/li&gt; &lt;li&gt;severity&lt;/li&gt; &lt;li&gt;first_detection_date&lt;/li&gt; &lt;li&gt;latest_detection_date&lt;/li&gt; &lt;/ul&gt; | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

