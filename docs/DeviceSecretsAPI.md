# DeviceSecretsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deviceSecretsGetActivationLockBypassCode**](DeviceSecretsAPI.md#devicesecretsgetactivationlockbypasscode) | **GET** /api/v1/devices/{device_id}/secrets/bypasscode | Get Activation Lock Bypass Code
[**deviceSecretsGetFilevaultRecoveryKey**](DeviceSecretsAPI.md#devicesecretsgetfilevaultrecoverykey) | **GET** /api/v1/devices/{device_id}/secrets/filevaultkey | Get FileVault Recovery Key
[**deviceSecretsGetRecoveryLockPassword**](DeviceSecretsAPI.md#devicesecretsgetrecoverylockpassword) | **GET** /api/v1/devices/{device_id}/secrets/recoverypassword | Get Recovery Lock Password
[**deviceSecretsGetUnlockPin**](DeviceSecretsAPI.md#devicesecretsgetunlockpin) | **GET** /api/v1/devices/{device_id}/secrets/unlockpin | Get Unlock Pin


# **deviceSecretsGetActivationLockBypassCode**
```swift
    open class func deviceSecretsGetActivationLockBypassCode(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Activation Lock Bypass Code

<p>This request allows you to retrieve the Activation Lock Bypass code.</p> <p>user_based_albc is the user-based Activation Lock bypass code for when Activation Lock is enabled using an personal Apple ID and Find My.</p> <p>device_based_albc is the device-based Activation Lock bypass code for when Activation Lock is enabled by the MDM server.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>device_id</code> (path parameter): The unique identifier of the device.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Activation Lock Bypass Code
DeviceSecretsAPI.deviceSecretsGetActivationLockBypassCode(deviceId: deviceId) { (response, error) in
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

# **deviceSecretsGetFilevaultRecoveryKey**
```swift
    open class func deviceSecretsGetFilevaultRecoveryKey(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get FileVault Recovery Key

<p>This request allows you to retrieve the FileVault Recovery key for a macOS device.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>device_id</code> (path parameter): The unique identifier of the device.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get FileVault Recovery Key
DeviceSecretsAPI.deviceSecretsGetFilevaultRecoveryKey(deviceId: deviceId) { (response, error) in
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

# **deviceSecretsGetRecoveryLockPassword**
```swift
    open class func deviceSecretsGetRecoveryLockPassword(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Recovery Lock Password

<p>This request returns the Recovery Lock password for a Mac with an Apple Silicon processor and the legacy EFI firmware password for a Mac with an Intel processor.</p> <p>For more details on setting and managing Recovery passwords, see this <a href=&quot;https://support.kandji.io/support/solutions/articles/72000560472-configure-the-recovery-password-library-item&quot;>Kandji support article</a>.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>device_id</code> (path parameter): The unique identifier of the device.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Recovery Lock Password
DeviceSecretsAPI.deviceSecretsGetRecoveryLockPassword(deviceId: deviceId) { (response, error) in
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

# **deviceSecretsGetUnlockPin**
```swift
    open class func deviceSecretsGetUnlockPin(deviceId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Unlock Pin

<p>This request allows you to retrieve the device unlock pin for a macOS device.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p><code>device_id</code> (path parameter): The unique identifier of the device.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Get Unlock Pin
DeviceSecretsAPI.deviceSecretsGetUnlockPin(deviceId: deviceId) { (response, error) in
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

