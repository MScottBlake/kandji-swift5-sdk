# SettingsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**settingsLicensing**](SettingsAPI.md#settingslicensing) | **GET** /api/v1/settings/licensing | Licensing


# **settingsLicensing**
```swift
    open class func settingsLicensing(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Licensing

Returns Kandji tenant licensing and utilization information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk


// Licensing
SettingsAPI.settingsLicensing() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

