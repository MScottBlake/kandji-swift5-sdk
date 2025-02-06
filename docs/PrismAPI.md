# PrismAPI

All URIs are relative to *https://<sub_domain>.api.kandji.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**prismActivationLock**](PrismAPI.md#prismactivationlock) | **GET** /api/v1/prism/activation_lock | Activation lock
[**prismApplicationFirewall**](PrismAPI.md#prismapplicationfirewall) | **GET** /api/v1/prism/application_firewall | Application firewall
[**prismApplications**](PrismAPI.md#prismapplications) | **GET** /api/v1/prism/apps | Applications
[**prismCertificates**](PrismAPI.md#prismcertificates) | **GET** /api/v1/prism/certificates | Certificates
[**prismCount**](PrismAPI.md#prismcount) | **GET** /api/v1/prism/count | Count
[**prismDesktopAndScreensaver**](PrismAPI.md#prismdesktopandscreensaver) | **GET** /api/v1/prism/desktop_and_screensaver | Desktop and Screensaver
[**prismDeviceInformation**](PrismAPI.md#prismdeviceinformation) | **GET** /api/v1/prism/device_information | Device information
[**prismFilevault**](PrismAPI.md#prismfilevault) | **GET** /api/v1/prism/filevault | FileVault
[**prismGatekeeperAndXprotect**](PrismAPI.md#prismgatekeeperandxprotect) | **GET** /api/v1/prism/gatekeeper_and_xprotect | Gatekeeper and XProtect
[**prismGetCategoryExport**](PrismAPI.md#prismgetcategoryexport) | **GET** /api/v1/prism/export/{export_id} | Get category export
[**prismInstalledProfiles**](PrismAPI.md#prisminstalledprofiles) | **GET** /api/v1/prism/installed_profiles | Installed profiles
[**prismKernelExtensions**](PrismAPI.md#prismkernelextensions) | **GET** /api/v1/prism/kernel_extensions | Kernel Extensions
[**prismLaunchAgentsAndDaemons**](PrismAPI.md#prismlaunchagentsanddaemons) | **GET** /api/v1/prism/launch_agents_and_daemons | Launch Agents and Daemons
[**prismLocalUsers**](PrismAPI.md#prismlocalusers) | **GET** /api/v1/prism/local_users | Local users
[**prismRequestCategoryExport**](PrismAPI.md#prismrequestcategoryexport) | **POST** /api/v1/prism/export | Request category export
[**prismStartupSettings**](PrismAPI.md#prismstartupsettings) | **GET** /api/v1/prism/startup_settings | Startup settings
[**prismSystemExtensions**](PrismAPI.md#prismsystemextensions) | **GET** /api/v1/prism/system_extensions | System Extensions
[**prismTransparencyDatabase**](PrismAPI.md#prismtransparencydatabase) | **GET** /api/v1/prism/transparency_database | Transparency database


# **prismActivationLock**
```swift
    open class func prismActivationLock(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Activation lock

Get activation lock attributes for devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Activation lock
PrismAPI.prismActivationLock(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

Void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismApplicationFirewall**
```swift
    open class func prismApplicationFirewall(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Application firewall

Get Application Firewall details for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Application firewall
PrismAPI.prismApplicationFirewall(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismApplications**
```swift
    open class func prismApplications(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Applications

Get the applications installed on macOS, iOS, iPadOS, and tvOS devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "filter_example" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Applications
PrismAPI.prismApplications(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismCertificates**
```swift
    open class func prismCertificates(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Certificates

Get certificate details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Certificates
PrismAPI.prismCertificates(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismCount**
```swift
    open class func prismCount(category: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Count

<p>Get the total record count for the specified Prism category.</p> <p>If a category contains spaces substitute the spaces for underscores (&quot;_&quot;) when using the API query.</p> <p>Example: <code>Device information</code> becomes <code>device_information</code>.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let category = "category_example" // String | <p>Return the count of records for the specified category.  If a category contains spaces substitute the spaces for underscores (&quot;_&quot;) when using the API query.</p> <p>Examples: apps device_information kernel_extensions system_extensions</p>

// Count
PrismAPI.prismCount(category: category) { (response, error) in
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
 **category** | **String** | &lt;p&gt;Return the count of records for the specified category.  If a category contains spaces substitute the spaces for underscores (&amp;quot;_&amp;quot;) when using the API query.&lt;/p&gt; &lt;p&gt;Examples: apps device_information kernel_extensions system_extensions&lt;/p&gt; | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismDesktopAndScreensaver**
```swift
    open class func prismDesktopAndScreensaver(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Desktop and Screensaver

Get Desktop and Screensaver details for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Desktop and Screensaver
PrismAPI.prismDesktopAndScreensaver(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismDeviceInformation**
```swift
    open class func prismDeviceInformation(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Device information

Get attributes about devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "filter_example" // String | <p>JSON schema object containing one or more key value pairs.</p> <p>Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc.</p> (optional)
let sortBy = "sortBy_example" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return (optional)
let body = "body_example" // String |  (optional)

// Device information
PrismAPI.prismDeviceInformation(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset, body: body) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | &lt;p&gt;JSON schema object containing one or more key value pairs.&lt;/p&gt; &lt;p&gt;Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc.&lt;/p&gt; | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return | [optional] 
 **body** | **String** |  | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismFilevault**
```swift
    open class func prismFilevault(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

FileVault

Get FileVault information for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return (optional)

// FileVault
PrismAPI.prismFilevault(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismGatekeeperAndXprotect**
```swift
    open class func prismGatekeeperAndXprotect(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Gatekeeper and XProtect

Get Gatekeeper and XProtect attributes for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Results are limited to Mac only as Gatekeeper and XProtect are not applicable for other platfroms. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return (optional)

// Gatekeeper and XProtect
PrismAPI.prismGatekeeperAndXprotect(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Results are limited to Mac only as Gatekeeper and XProtect are not applicable for other platfroms. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismGetCategoryExport**
```swift
    open class func prismGetCategoryExport(exportId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get category export

<p>Get an export request's status. To download the export, use the <code>signed_url</code>. This will download a CSV file containing the exported category information.</p> <h3 id=&quot;request-parameters&quot;>Request Parameters</h3> <p>export_id (path parameter): The unique identifier of the the export job.</p>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let exportId = "exportId_example" // String | 

// Get category export
PrismAPI.prismGetCategoryExport(exportId: exportId) { (response, error) in
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
 **exportId** | **String** |  | 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismInstalledProfiles**
```swift
    open class func prismInstalledProfiles(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Installed profiles

Get Installed Profiles attributes for macOS, iOS, iPadOS, and tvOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Installed profiles
PrismAPI.prismInstalledProfiles(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismKernelExtensions**
```swift
    open class func prismKernelExtensions(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Kernel Extensions

Get Kernel Extension attributes for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | SON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Kernel Extensions
PrismAPI.prismKernelExtensions(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | SON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismLaunchAgentsAndDaemons**
```swift
    open class func prismLaunchAgentsAndDaemons(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Launch Agents and Daemons

Get Launch Agents and Daemons installed on macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Launch Agents and Daemons
PrismAPI.prismLaunchAgentsAndDaemons(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismLocalUsers**
```swift
    open class func prismLocalUsers(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Local users

Get Local Users detials for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Local users
PrismAPI.prismLocalUsers(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismRequestCategoryExport**
```swift
    open class func prismRequestCategoryExport(body: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Request category export

<p>Request export of a category. The <code>id</code> key is used when checking the export status using the <em>Request category export</em> endpoint.</p> <p><strong>Request Body Parameters: application/json</strong></p> <div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table> <thead> <tr> <th>Key</th> <th>Type</th> <th>Possible value(s)</th> <th>Description</th> </tr> </thead> <tbody> <tr> <td><code>blueprint_ids</code></td> <td><code>array</code></td> <td><code>[&quot;string&quot;, &quot;string&quot;, &quot;string&quot;]</code></td> <td>List of one or more comma separate blueprint IDs.</td> </tr> <tr> <td><code>category</code></td> <td><code>string</code></td> <td><code>apps</code> ,  <br /><code>activation_lock</code> ,  <br /><code>desktop_and_screensaver</code> ,  <br /><code>device_information</code> ,  <br /><code>gatekeeper_and_xprotect</code> ,  <br /><code>installed_profiles</code> ,  <br /><code>kernel_extensions</code> ,  <br /><code>local_users</code> ,  <br /><code>launch_agents_and_daemons</code> ,  <br /><code>system_extensions</code> ,  <br /><code>startup_settings</code> ,  <br /><code>transparency_database</code></td> <td>Only one category per export reqest.</td> </tr> <tr> <td><code>device_families</code></td> <td><code>array</code></td> <td><code>[&quot;Mac&quot;, &quot;iPhone&quot;, &quot;iPad&quot;, &quot;tvOS&quot;]</code></td> <td>List of one or more comma separted string values for device families.</td> </tr> <tr> <td><code>filter</code></td> <td><code>object</code></td> <td><code>{&quot;apple_silicon&quot;: {&quot;eq&quot;: true}, &quot;device__name&quot;: {&quot;like&quot;: [&quot;this&quot;, &quot;or_this&quot;]}}</code></td> <td>JSON schema object containing one or more key value pairs.  <br />  <br /><strong>Note</strong>: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc.</td> </tr> <tr> <td><code>sort_by</code></td> <td><code>string</code></td> <td></td> <td>Sort results by the name of a given response body key in either ascending (default behavior) or descending(`-`) order.</td> </tr> </tbody> </table> </div>

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let body = "body_example" // String |  (optional)

// Request category export
PrismAPI.prismRequestCategoryExport(body: body) { (response, error) in
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

# **prismStartupSettings**
```swift
    open class func prismStartupSettings(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Startup settings

Get Startup settings for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return (optional)

// Startup settings
PrismAPI.prismStartupSettings(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismSystemExtensions**
```swift
    open class func prismSystemExtensions(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

System Extensions

Get System Extension attributes for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// System Extensions
PrismAPI.prismSystemExtensions(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prismTransparencyDatabase**
```swift
    open class func prismTransparencyDatabase(blueprintIds: String? = nil, deviceFamilies: String? = nil, filter: String? = nil, sortBy: String? = nil, limit: String? = nil, offset: String? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Transparency database

Get Transparency Database (TCC) attributes for macOS.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import kandji_sdk

let blueprintIds = "blueprintIds_example" // String | Filter results by one or more blueprint IDs separated by commas. (optional)
let deviceFamilies = "deviceFamilies_example" // String | Filter results by one or more device families separate by commas. (optional)
let filter = "" // String | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. (optional)
let sortBy = "" // String | Sort results by the name of a given response body key in either ascending (default behavior) or descending(<code>-</code>) order. (optional)
let limit = "" // String | A hard upper <code>limit</code> is set at 300 device records returned per request. If more device records are expected, pagination should be used using the <code>limit</code> and <code>offset</code> parameters. Additionally, parameter queries can be added to a request to limit the results. (optional)
let offset = "" // String | Specify the starting record to return. (optional)

// Transparency database
PrismAPI.prismTransparencyDatabase(blueprintIds: blueprintIds, deviceFamilies: deviceFamilies, filter: filter, sortBy: sortBy, limit: limit, offset: offset) { (response, error) in
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
 **blueprintIds** | **String** | Filter results by one or more blueprint IDs separated by commas. | [optional] 
 **deviceFamilies** | **String** | Filter results by one or more device families separate by commas. | [optional] 
 **filter** | **String** | JSON schema object containing one or more key value pairs. Note: For detailed information on fiters, see the Filters section at the begining of the Visibility API endpoints in this doc. | [optional] 
 **sortBy** | **String** | Sort results by the name of a given response body key in either ascending (default behavior) or descending(&lt;code&gt;-&lt;/code&gt;) order. | [optional] 
 **limit** | **String** | A hard upper &lt;code&gt;limit&lt;/code&gt; is set at 300 device records returned per request. If more device records are expected, pagination should be used using the &lt;code&gt;limit&lt;/code&gt; and &lt;code&gt;offset&lt;/code&gt; parameters. Additionally, parameter queries can be added to a request to limit the results. | [optional] 
 **offset** | **String** | Specify the starting record to return. | [optional] 

### Return type

**AnyCodable**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

