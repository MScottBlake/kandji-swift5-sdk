# NotesAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notesCreateDeviceNote**](NotesAPI.md#notescreatedevicenote) | **POST** /api/v1/devices/{device_id}/notes | Create Device Note
[**notesDeleteDeviceNote**](NotesAPI.md#notesdeletedevicenote) | **DELETE** /api/v1/devices/{device_id}/notes/{note_id} | Delete Device Note
[**notesGetDeviceNotes**](NotesAPI.md#notesgetdevicenotes) | **GET** /api/v1/devices/{device_id}/notes | Get Device Notes
[**notesRetrieveDeviceNote**](NotesAPI.md#notesretrievedevicenote) | **GET** /api/v1/devices/{device_id}/notes/{note_id} | Retrieve Device Note
[**notesUpdateDeviceNote**](NotesAPI.md#notesupdatedevicenote) | **PATCH** /api/v1/devices/{device_id}/notes/{note_id} | Update Device Note


# **notesCreateDeviceNote**
```swift
    open class func notesCreateDeviceNote(deviceId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Create Device Note

This request creates a note for the specified device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Create Device Note
NotesAPI.notesCreateDeviceNote(deviceId: deviceId, body: body) { (response, error) in
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
 **deviceId** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notesDeleteDeviceNote**
```swift
    open class func notesDeleteDeviceNote(deviceId: String, noteId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Delete Device Note

This request deletes a specified note (Note ID) for the specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let noteId = "noteId_example" // String | 

// Delete Device Note
NotesAPI.notesDeleteDeviceNote(deviceId: deviceId, noteId: noteId) { (response, error) in
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
 **deviceId** | **String** |  | 
 **noteId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notesGetDeviceNotes**
```swift
    open class func notesGetDeviceNotes(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Device Notes

This request gets all notes for the specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Device Notes
NotesAPI.notesGetDeviceNotes(deviceId: deviceId) { (response, error) in
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
 **deviceId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notesRetrieveDeviceNote**
```swift
    open class func notesRetrieveDeviceNote(deviceId: String, noteId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Retrieve Device Note

This request retrieves a specified note (Note ID) for the specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let noteId = "noteId_example" // String | 

// Retrieve Device Note
NotesAPI.notesRetrieveDeviceNote(deviceId: deviceId, noteId: noteId) { (response, error) in
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
 **deviceId** | **String** |  | 
 **noteId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notesUpdateDeviceNote**
```swift
    open class func notesUpdateDeviceNote(deviceId: String, noteId: String, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Update Device Note

This request patches a specified note (Note ID) for the specified Device ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let noteId = "noteId_example" // String | 
let body = "body_example" // String |  (optional)

// Update Device Note
NotesAPI.notesUpdateDeviceNote(deviceId: deviceId, noteId: noteId, body: body) { (response, error) in
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
 **deviceId** | **String** |  | 
 **noteId** | **String** |  | 
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

