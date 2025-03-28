# AuditLogAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listAuditEvents**](AuditLogAPI.md#listauditevents) | **GET** /api/v1/audit/events | List audit events


# **listAuditEvents**
```swift
    open class func listAuditEvents(limit: String, sortBy: String, startDate: String? = nil, endDate: String? = nil, cursor: String? = nil, completion: @escaping (_ data: AuditLogListAuditEvents200Response?, _ error: Error?) -> Void)
```

List audit events

<p>List Audit log events from the Kandji Activity module.</p> <p>Returns events related to</p> <ul> <li><p>Blueprint and Library Item creation, updates, and deletions (CUD)</p> </li> <li><p>Access to sensitive data (such as FileVault keys and recovery keys)</p> </li> <li><p>Device lifecycle events (enrollment, deletion, MDM removal, blueprint changes)</p> </li> <li><p>User directory events (including directory user deletions)</p> </li> <li><p>Administrative actions (tenant owner updates, API token management (CUD))</p> </li> <li><p>Admin user management activities</p> </li> <li><p>Vulnerability management detections and remediations (for customers with this feature)</p> </li> </ul>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let limit = "limit_example" // String | A max upper <code>limit</code> is set at 500 records returned per request. Pagination should be used using the cursor in the <code>next</code> key to request more results. Additionally, parameter queries can be added to a request to filter the results.
let sortBy = "sortBy_example" // String | Sort results by <code>occurred_at</code>, <code>id</code> either ascending (default behavior) or descending(-) order.
let startDate = "startDate_example" // String | Filter by start date in datetime or year-month-day (2024-11-26) formats (optional)
let endDate = "endDate_example" // String | Filter by start date in datetime or year-month-day (2024-12-06) formats (optional)
let cursor = "" // String | You can pass the next cursor as a parameter or use the URL in the next key to get the next page of results or to start from where you left off last. (optional)

// List audit events
AuditLogAPI.listAuditEvents(limit: limit, sortBy: sortBy, startDate: startDate, endDate: endDate, cursor: cursor) { (response, error) in
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
 **limit** | **String** | A max upper &lt;code&gt;limit&lt;/code&gt; is set at 500 records returned per request. Pagination should be used using the cursor in the &lt;code&gt;next&lt;/code&gt; key to request more results. Additionally, parameter queries can be added to a request to filter the results. | 
 **sortBy** | **String** | Sort results by &lt;code&gt;occurred_at&lt;/code&gt;, &lt;code&gt;id&lt;/code&gt; either ascending (default behavior) or descending(-) order. | 
 **startDate** | **String** | Filter by start date in datetime or year-month-day (2024-11-26) formats | [optional] 
 **endDate** | **String** | Filter by start date in datetime or year-month-day (2024-12-06) formats | [optional] 
 **cursor** | **String** | You can pass the next cursor as a parameter or use the URL in the next key to get the next page of results or to start from where you left off last. | [optional] 

### Return type

[**AuditLogListAuditEvents200Response**](AuditLogListAuditEvents200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

