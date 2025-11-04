# DeviceActionsAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearPasscode**](DeviceActionsAPI.md#clearpasscode) | **POST** /api/v1/devices/{device_id}/action/clearpasscode | Clear Passcode
[**deleteDevice**](DeviceActionsAPI.md#deletedevice) | **DELETE** /api/v1/devices/{device_id} | Delete Device
[**deleteUser**](DeviceActionsAPI.md#deleteuser) | **POST** /api/v1/devices/{device_id}/action/deleteuser | Delete User
[**eraseDevice**](DeviceActionsAPI.md#erasedevice) | **POST** /api/v1/devices/{device_id}/action/erase | Erase Device
[**getDeviceCommands**](DeviceActionsAPI.md#getdevicecommands) | **GET** /api/v1/devices/{device_id}/commands | Get Device Commands
[**lockDevice**](DeviceActionsAPI.md#lockdevice) | **POST** /api/v1/devices/{device_id}/action/lock | Lock Device
[**performDailyCheckin**](DeviceActionsAPI.md#performdailycheckin) | **POST** /api/v1/devices/{device_id}/action/dailycheckin | Perform Daily Check-in
[**reinstallAgent**](DeviceActionsAPI.md#reinstallagent) | **POST** /api/v1/devices/{device_id}/action/reinstallagent | Reinstall Agent
[**remoteDesktop**](DeviceActionsAPI.md#remotedesktop) | **POST** /api/v1/devices/{device_id}/action/remotedesktop | Remote Desktop
[**renewMdmProfile**](DeviceActionsAPI.md#renewmdmprofile) | **POST** /api/v1/devices/{device_id}/action/renewmdmprofile | Renew MDM Profile
[**restartDevice**](DeviceActionsAPI.md#restartdevice) | **POST** /api/v1/devices/{device_id}/action/restart | Restart Device
[**sendBlankpush**](DeviceActionsAPI.md#sendblankpush) | **POST** /api/v1/devices/{device_id}/action/blankpush | Send Blankpush
[**setName**](DeviceActionsAPI.md#setname) | **POST** /api/v1/devices/{device_id}/action/setname | Set Name
[**shutdown**](DeviceActionsAPI.md#shutdown) | **POST** /api/v1/devices/{device_id}/action/shutdown | Shutdown
[**unlockAccount**](DeviceActionsAPI.md#unlockaccount) | **POST** /api/v1/devices/{device_id}/action/unlockaccount | Unlock Account
[**updateInventory**](DeviceActionsAPI.md#updateinventory) | **POST** /api/v1/devices/{device_id}/action/updateinventory | Update Inventory


# **clearPasscode**
```swift
    open class func clearPasscode(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Clear Passcode

This endpoint sends an MDM command to clear a device passcode. Available for iPhone and iPad.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Clear Passcode
DeviceActionsAPI.clearPasscode(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevice**
```swift
    open class func deleteDevice(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete Device

<p>This endpoint deletes a device, which will remove the device record and unenroll the device from MDM.</p> <p>For macOS and Windows devices, the agent will automatically uninstall on the next agent checkin.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Delete Device
DeviceActionsAPI.deleteDevice(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
```swift
    open class func deleteUser(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete User

<p>This endpoint sends an MDM command to delete a local user account on macOS and Shared iPad (Device Supervision via Automated Device Enrollment is required).</p> <p><strong>Request Body Parameters</strong>: application/json</p> <hr /> <p><code>DeleteAllUsers</code> - <code>boolean</code></p> <p><code>ForceDeletion</code> - <code>boolean</code></p> <p><code>UserName</code> - <code>string</code></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Delete User
DeviceActionsAPI.deleteUser(deviceId: deviceId, body: body) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eraseDevice**
```swift
    open class func eraseDevice(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Erase Device

<p>This endpoint sends an MDM command to erase a device.</p> <p><strong>Request Body Parameters: application/json</strong></p> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th>Key</th> <th>Type</th> <th>Description</th> </tr> </thead> <tbody> <tr> <td><code>PIN</code></td> <td><code>string</code></td> <td>The six-character PIN for Find My. This value is available in macOS 10.8 and later.  <br />  <br />Note: This value will be ignored for iOS, iPadOS, and tvOS devices.</td> </tr> <tr> <td><code>PreserveDataPlan</code></td> <td><code>boolean</code></td> <td>If true, preserve the data plan on an iPhone or iPad with eSIM functionality, if one exists. This value is available in iOS 11 and later.  <br />  <br />Default: true</td> </tr> <tr> <td><code>DisallowProximitySetup</code></td> <td><code>boolean</code></td> <td>If true, disable Proximity Setup on the next reboot and skip the pane in Setup Assistant. This value is available in iOS 11 and later. Prior to iOS 14, don’t use this option with any other option.  <br />  <br />Default: false</td> </tr> <tr> <td><code>ReturnToService</code></td> <td><code>object</code></td> <td>(iOS 17 and later and iPadOS 17 and later and with Shared iPad ) When sending the erase device command to mobile devices, use this key to enable Return to Service. Include an optional Wi-Fi payload ProfileId to allow the device to connect to a Wi-Fi network automatically after being erased. If a Wi-Fi ProfileId is not provided and the mobile device is not tethered to a Mac to share the network connection, the end-user will be required to select a Wi-Fi network to complete the setup.  <br />  <br />If sent to any macOS computer or to mobile devices on iOS 16 or iPadOS 16 and below, the RTS keys will be ignored, and only the erase device command will be issued to the device.</td> </tr> <tr> <td>- <code>Enabled</code></td> <td><code>boolean</code></td> <td>(Required) If true, the device tries to re-enroll itself automatically after erasure. The user needs to deactivate all activation locks for this feature to work correctly.</td> </tr> <tr> <td>- <code>ProfileId</code></td> <td><code>string</code></td> <td>Profile ID value associated with a Wi-Fi profile payload. This is required when the device doesn’t have ethernet access.</td> </tr> <tr> <td><code>erase_mode</code></td> <td><code>string</code></td> <td>For Windows devices, the following modes are supported:  <br />  <br /><code>WIPE</code> - Equivalent to running Reset this PC &gt; Remove everything from the Settings app, with Clean Data set to No and Delete Files set to Yes.  <br />  <br /><code>WIPE_CLOUD</code> - Perform a cloud-based remote wipe on the device.  <br />  <br /><code>WIPE_PROTECTED</code> - Performs a remote wipe on the device and fully cleans the internal drive. In some device configurations, this command may leave the device unable to boot. This is similar to WIPE but cannot be circumvented by power cycling the device.</td> </tr> <tr> <td><code>erase_flags</code></td> <td><code>string</code></td> <td>Optional erase options for Android devices, provided as a single comma separated list of the following strings:  <br />  <br /><code>WIPE_EXTERNAL_STORAGE</code> - Additionally wipe the device's external storage (such as SD cards).  <br />  <br /><code>WIPE_ESIMS</code> - For company-owned devices, this removes all eSIMs from the device when the device is wiped.  <br />  <br />Example value:  <br /><code>WIPE_EXTERNAL_STORAGE,WIPE_ESIMS</code></td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Erase Device
DeviceActionsAPI.eraseDevice(deviceId: deviceId, body: body) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceCommands**
```swift
    open class func getDeviceCommands(deviceId: String, limit: String, offset: String? = nil, completion: @escaping (_ data: DeviceActionsGetDeviceCommands200Response?, _ error: Error?) -> Void)
```

Get Device Commands

<p>This endpoint sends a request to get information about the commands sent to a given Apple device.</p> <h3 id=&quot;mdm-status-codes&quot;>MDM Status Codes</h3> <ul> <li><p>1 : Command is Pending</p> </li> <li><p>2 : Command is running</p> </li> <li><p>3 : Command completed</p> </li> <li><p>4 : Command failed</p> </li> <li><p>5 : Command received &quot;Not Now&quot; response</p> </li> </ul>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let limit = "limit_example" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results.
let offset = "" // String | Specify the starting record to return (optional)

// Get Device Commands
DeviceActionsAPI.getDeviceCommands(deviceId: deviceId, limit: limit, offset: offset) { (response, error) in
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
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | 
 **offset** | **String** | Specify the starting record to return | [optional] 

### Return type

[**DeviceActionsGetDeviceCommands200Response**](DeviceActionsGetDeviceCommands200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockDevice**
```swift
    open class func lockDevice(deviceId: String, body: String? = nil, completion: @escaping (_ data: DeviceActionsLockDevice200Response?, _ error: Error?) -> Void)
```

Lock Device

<p>This endpoint sends an MDM command to remotely lock an Apple or Android device.</p> <p>For macOS clients, an unlock PIN will be created, and returned in the response.</p> <blockquote> <p><strong>Caution !!!</strong><br /><em>For a Mac with Apple silicon running a version of macOS before 11.5 will deactivate the Mac. To reactivate, the Mac requires a network connection and authentication by a Secure Token enabled local administrator.</em> </p> </blockquote> <p>Optionally, a JSON payload can be sent in the request to set a lock message and phone number on the target Mac.</p> <p><strong>Note:</strong> For macOS, although the lock message is displayed on all types of Mac computers, the phone number is displayed only on a Mac with Apple silicon.</p> <h4 id=&quot;response-properties&quot;>Response properties</h4> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th>Property</th> <th>Description</th> <th>Type</th> </tr> </thead> <tbody> <tr> <td>PIN</td> <td>Six digit pin code used to unlock a Mac.</td> <td>String</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Lock Device
DeviceActionsAPI.lockDevice(deviceId: deviceId, body: body) { (response, error) in
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

[**DeviceActionsLockDevice200Response**](DeviceActionsLockDevice200Response.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **performDailyCheckin**
```swift
    open class func performDailyCheckin(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Perform Daily Check-in

This endpoint runs the daily MDM commands and MDM logic for Apple devices and initiates a full daily CSP sync for Windows devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Perform Daily Check-in
DeviceActionsAPI.performDailyCheckin(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reinstallAgent**
```swift
    open class func reinstallAgent(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reinstall Agent

This endpoint sends an MDM command reinstall the Kandji Agent on macOS devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Reinstall Agent
DeviceActionsAPI.reinstallAgent(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remoteDesktop**
```swift
    open class func remoteDesktop(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remote Desktop

<p>This endpoint sends an MDM command to control the Remote Management status on a Mac. This MDM command turns on (or turns off) Remote Management with <em>Observe</em> and <em>Control</em> permissions given to all users*.*</p> <p><strong>Request Body Parameters</strong>: application/json</p> <hr /> <p><code>EnableRemoteDesktop</code> - <code>boolean</code></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Remote Desktop
DeviceActionsAPI.remoteDesktop(deviceId: deviceId, body: body) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renewMdmProfile**
```swift
    open class func renewMdmProfile(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Renew MDM Profile

This endpoint sends an MDM command to re-install the existing root MDM profile for a given Apple device. This command will not impact any existing configurations, apps, or profiles.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Renew MDM Profile
DeviceActionsAPI.renewMdmProfile(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restartDevice**
```swift
    open class func restartDevice(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restart Device

<p>This endpoint sends an MDM command to remotely restart an iPhone, iPad, Apple TV, or Mac.</p> <ul> <li><p><code>RebuildKernelCache</code> - If <code>true</code>, the system rebuilds the kernel cache during a device restart. If <code>BootstrapTokenAllowedForAuthentication</code> is <code>true</code> inSecurityInfoResponse.SecurityInfo, the device requests the bootstrap token from MDM before executing this command. This value is available in macOS 11 and later. Default: false</p> </li> <li><p><code>NotifyUser</code> - If <code>true</code>, notifies the user to restart the device at their convenience. Forced restart if the device is at <code>loginwindow</code> with no logged-in users. The user can dismiss the notification and ignore the request. No further notifications display unless you resend the command. This value is available in macOS 11.3 and later. Default: false</p> </li> </ul>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Restart Device
DeviceActionsAPI.restartDevice(deviceId: deviceId, body: body) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendBlankpush**
```swift
    open class func sendBlankpush(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Send Blankpush

<p>This endpoint sends an MDM command to initiate a blank push for an Apple device.</p> <p><a href=&quot;https://support.kandji.io/what-is-a-blank-push&quot;>Using the Blank Push command</a></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Send Blankpush
DeviceActionsAPI.sendBlankpush(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setName**
```swift
    open class func setName(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Set Name

<p>This endpoint sends an MDM command to set the device name for an Apple device.</p> <p><strong>Request Body Parameters</strong>: application/json</p> <hr /> <p><code>DeviceName</code> - <code>string</code></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Set Name
DeviceActionsAPI.setName(deviceId: deviceId, body: body) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shutdown**
```swift
    open class func shutdown(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Shutdown

This endpoint sends an MDM command to shutdown an iPhone, iPad, or Mac.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Shutdown
DeviceActionsAPI.shutdown(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlockAccount**
```swift
    open class func unlockAccount(deviceId: String, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unlock Account

<p>This endpoint sends an MDM command to unlock a user account that locked by the system because of too many failed password attempts. Available for Mac.</p> <p><strong>Request Body Parameters</strong>: application/json</p> <hr /> <p><code>UserName</code> - <code>string</code></p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 
let body = "body_example" // String |  (optional)

// Unlock Account
DeviceActionsAPI.unlockAccount(deviceId: deviceId, body: body) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInventory**
```swift
    open class func updateInventory(deviceId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update Inventory

<p>This endpoint runs the daily MDM commands and MDM logic for Apple devices.</p> <p><strong>Note:</strong> The newer <code>dailycheckin</code> endpoint can be used instead and also supports Windows devices.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let deviceId = "deviceId_example" // String | 

// Update Inventory
DeviceActionsAPI.updateInventory(deviceId: deviceId) { (response, error) in
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

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

