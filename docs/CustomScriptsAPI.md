# CustomScriptsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customScriptsCreateCustomScript**](CustomScriptsAPI.md#customscriptscreatecustomscript) | **POST** /api/v1/library/custom-scripts | Create Custom Script
[**customScriptsDeleteCustomScript**](CustomScriptsAPI.md#customscriptsdeletecustomscript) | **DELETE** /api/v1/library/custom-scripts/{library_item_id} | Delete Custom Script
[**customScriptsGetCustomScript**](CustomScriptsAPI.md#customscriptsgetcustomscript) | **GET** /api/v1/library/custom-scripts/{library_item_id} | Get Custom Script
[**customScriptsListCustomScripts**](CustomScriptsAPI.md#customscriptslistcustomscripts) | **GET** /api/v1/library/custom-scripts | List Custom Scripts
[**customScriptsUpdateCustomScript**](CustomScriptsAPI.md#customscriptsupdatecustomscript) | **PATCH** /api/v1/library/custom-scripts/{library_item_id} | Update Custom Script


# **customScriptsCreateCustomScript**
```swift
    open class func customScriptsCreateCustomScript(body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create Custom Script

This request allows you to create a custom script in the Kandji library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let body = "body_example" // String |  (optional)

// Create Custom Script
CustomScriptsAPI.customScriptsCreateCustomScript(body: body) { (response, error) in
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
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customScriptsDeleteCustomScript**
```swift
    open class func customScriptsDeleteCustomScript(libraryItemId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Custom Script

<p>NOTICE: This is permanent so be careful.</p> <p>This endpoint sends a request to delete a specific custom scripts from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Delete Custom Script
CustomScriptsAPI.customScriptsDeleteCustomScript(libraryItemId: libraryItemId) { (response, error) in
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
 **libraryItemId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customScriptsGetCustomScript**
```swift
    open class func customScriptsGetCustomScript(libraryItemId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Custom Script

<p>This endpoint retrieves details about a specific custom script from the Kandji library.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>library_item_id</code> (path parameter): The unique identifier of the library item.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 

// Get Custom Script
CustomScriptsAPI.customScriptsGetCustomScript(libraryItemId: libraryItemId) { (response, error) in
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
 **libraryItemId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customScriptsListCustomScripts**
```swift
    open class func customScriptsListCustomScripts(page: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

List Custom Scripts

This endpoint makes a request to retrieve a list of custom scripts from the Kandji library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let page = "page_example" // String | Optional page number. Used when results exceed pagination threshold. A hard upper limit is set at 300 device records returned per request. (optional)

// List Custom Scripts
CustomScriptsAPI.customScriptsListCustomScripts(page: page) { (response, error) in
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
 **page** | **String** | Optional page number. Used when results exceed pagination threshold. A hard upper limit is set at 300 device records returned per request. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customScriptsUpdateCustomScript**
```swift
    open class func customScriptsUpdateCustomScript(libraryItemId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update Custom Script

This request allows you to update a custom script in the Kandji library.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let libraryItemId = "libraryItemId_example" // String | 
let body = "body_example" // String |  (optional)

// Update Custom Script
CustomScriptsAPI.customScriptsUpdateCustomScript(libraryItemId: libraryItemId, body: body) { (response, error) in
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
 **libraryItemId** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

