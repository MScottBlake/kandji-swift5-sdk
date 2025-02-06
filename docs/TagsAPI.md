# TagsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tagsCreateTag**](TagsAPI.md#tagscreatetag) | **POST** /api/v1/tags | Create Tag
[**tagsDeleteTag**](TagsAPI.md#tagsdeletetag) | **DELETE** /api/v1/tags/{tag_id} | Delete Tag
[**tagsGetTags**](TagsAPI.md#tagsgettags) | **GET** /api/v1/tags | Get Tags
[**tagsUpdateTag**](TagsAPI.md#tagsupdatetag) | **PATCH** /api/v1/tags/{tag_id} | Update Tag


# **tagsCreateTag**
```swift
    open class func tagsCreateTag(body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create Tag

Create a tag. Can only create one tag per request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let body = "body_example" // String |  (optional)

// Create Tag
TagsAPI.tagsCreateTag(body: body) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagsDeleteTag**
```swift
    open class func tagsDeleteTag(tagId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Tag

<p>Delete a tag.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>tag_id</code> (path parameter): The unique identifier of the tag.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let tagId = "tagId_example" // String | 

// Delete Tag
TagsAPI.tagsDeleteTag(tagId: tagId) { (response, error) in
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
 **tagId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagsGetTags**
```swift
    open class func tagsGetTags(search: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Tags

Return configured tags.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let search = "search_example" // String | Return resultes containing a given tag search string.

// Get Tags
TagsAPI.tagsGetTags(search: search) { (response, error) in
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
 **search** | **String** | Return resultes containing a given tag search string. | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagsUpdateTag**
```swift
    open class func tagsUpdateTag(tagId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update Tag

<p>Update tag name.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>tag_id</code> (path parameter): The unique identifier of the tag.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let tagId = "tagId_example" // String | 
let body = "body_example" // String |  (optional)

// Update Tag
TagsAPI.tagsUpdateTag(tagId: tagId, body: body) { (response, error) in
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
 **tagId** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

