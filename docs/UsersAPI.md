# UsersAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUser**](UsersAPI.md#deleteuser) | **DELETE** /api/v1/users/{user_id} | Delete User
[**getUser**](UsersAPI.md#getuser) | **GET** /api/v1/users/{user_id} | Get User
[**listUsers**](UsersAPI.md#listusers) | **GET** /api/v1/users | List Users


# **deleteUser**
```swift
    open class func deleteUser(userId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete User

<p>This endpoint makes a request to delete a specified user directory integration user by id (uuid).</p> <h3 id=&quot;user-still-assigned-to-device&quot;>User still assigned to device</h3> <p>You will see the following response (400 bad request), if a user is still assigned to one or more devices in Kandji. The user will need to be unassigned from the device either manually through the Kandji tenant or programatically using the Update device API endpoint.</p> <pre class=&quot;click-to-expand-wrapper is-snippet-wrapper&quot;><code class=&quot;language-json&quot;>{     &quot;detail&quot;: &quot;User still assigned to one or more devices.&quot; }  </code></pre>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let userId = "userId_example" // String | 

// Delete User
UsersAPI.deleteUser(userId: userId) { (response, error) in
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
 **userId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```swift
    open class func getUser(userId: String, completion: @escaping (_ data: UsersGetUser200Response?, _ error: Error?) -> Void)
```

Get User

This endpoint makes a request to retrieve a specified user directory integration user by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let userId = "userId_example" // String | 

// Get User
UsersAPI.getUser(userId: userId) { (response, error) in
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
 **userId** | **String** |  | 

### Return type

[**UsersGetUser200Response**](UsersGetUser200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
```swift
    open class func listUsers(email: String? = nil, _id: String? = nil, integrationId: String? = nil, archived: String? = nil, cursor: String? = nil, completion: @escaping (_ data: UsersListUsers200Response?, _ error: Error?) -> Void)
```

List Users

<p>This endpoint makes a request to retrieve a list of users from user directory integrations.</p> <p>A maximum of 300 records are returned per request, and pagination can be performed leveraging the URLs provided in the <code>next</code> and <code>previous</code> keys in the response. If there are no more results available, the respective key will be <code>null</code>.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let email = "email_example" // String | Returns users with email addresses containing the provided string. (optional)
let _id = "_id_example" // String | Search for a user matching the provided UUID value. (optional)
let integrationId = "integrationId_example" // String | Search for a integration matching the provided UUID value. (optional)
let archived = "archived_example" // String | Return only users that are either archived (true) or not archived (false). Archived users are users that appear in the Kandji Users module under the Archived tab. (optional)
let cursor = "cursor_example" // String | Cursor for the next or previous page or results. Can also store the URL from the next and previous fields in the response. (optional)

// List Users
UsersAPI.listUsers(email: email, _id: _id, integrationId: integrationId, archived: archived, cursor: cursor) { (response, error) in
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
 **email** | **String** | Returns users with email addresses containing the provided string. | [optional] 
 **_id** | **String** | Search for a user matching the provided UUID value. | [optional] 
 **integrationId** | **String** | Search for a integration matching the provided UUID value. | [optional] 
 **archived** | **String** | Return only users that are either archived (true) or not archived (false). Archived users are users that appear in the Kandji Users module under the Archived tab. | [optional] 
 **cursor** | **String** | Cursor for the next or previous page or results. Can also store the URL from the next and previous fields in the response. | [optional] 

### Return type

[**UsersListUsers200Response**](UsersListUsers200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

