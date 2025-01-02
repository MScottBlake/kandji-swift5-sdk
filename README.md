# Swift5 API client for kandji_sdk

<html><head></head><body><h1 id=&quot;welcome-to-the-kandji-api-documentation&quot;>Welcome to the Kandji API Documentation</h1>
<p>You can find your API URL in Settings &gt; Access. The API URL will follow the below formats.</p>
<ul>
<li><p>US - <code>https://SubDomain.api.kandji.io</code></p>
</li>
<li><p>EU - <code>https://SubDomain.api.eu.kandji.io</code></p>
</li>
</ul>
<p>For information on how to obtain an API token, please refer to the following support article.</p>
<p><a href=&quot;https://support.kandji.io/api&quot;>https://support.kandji.io/api</a></p>
<h4 id=&quot;rate-limit&quot;>Rate Limit</h4>
<p>The Kandji API currently has an API rate limit of 10,000 requests per hour per customer.</p>
<h4 id=&quot;request-methods&quot;>Request Methods</h4>
<p>HTTP request methods supported by the Kandji API.</p>
<div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table>
<thead>
<tr>
<th>Method</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr>
<td>GET</td>
<td>The <code>GET</code> method requests a representation of the specified resource.</td>
</tr>
<tr>
<td>POST</td>
<td>The <code>POST</code> method submits an entity to the specified resource.</td>
</tr>
<tr>
<td>PATCH</td>
<td>The <code>PATCH</code> method applies partial modifications to a resource.</td>
</tr>
<tr>
<td>DELETE</td>
<td>The <code>DELETE</code> method deletes the specified resource.</td>
</tr>
</tbody>
</table>
</div><h4 id=&quot;response-codes&quot;>Response codes</h4>
<p>Not all response codes apply to every endpoint.</p>
<div class=&quot;click-to-expand-wrapper is-table-wrapper&quot;><table>
<thead>
<tr>
<th>Code</th>
<th>Response</th>
</tr>
</thead>
<tbody>
<tr>
<td>200</td>
<td>OK</td>
</tr>
<tr>
<td>201</td>
<td>Created</td>
</tr>
<tr>
<td>204</td>
<td>No content</td>
</tr>
<tr>
<td></td>
<td>Typical response when sending the DELETE method.</td>
</tr>
<tr>
<td>400</td>
<td>Bad Request</td>
</tr>
<tr>
<td></td>
<td>&quot;Command already running&quot; - The command may already be running in a <em>Pending</em> state waiting on the device.</td>
</tr>
<tr>
<td></td>
<td>&quot;Command is not allowed for current device&quot; - The command may not be compatible with the target device.</td>
</tr>
<tr>
<td></td>
<td>&quot;JSON parse error - Expecting ',' delimiter: line 3 column 2 (char 65)&quot;</td>
</tr>
<tr>
<td>401</td>
<td>Unauthorized</td>
</tr>
<tr>
<td></td>
<td>This error can occur if the token is incorrect, was revoked, or the token has expired.</td>
</tr>
<tr>
<td>403</td>
<td>Forbidden</td>
</tr>
<tr>
<td></td>
<td>The request was understood but cannot be authorized.</td>
</tr>
<tr>
<td>404</td>
<td>Not found</td>
</tr>
<tr>
<td></td>
<td>Unable to locate the resource in the Kandji tenant.</td>
</tr>
<tr>
<td>415</td>
<td>Unsupported Media Type</td>
</tr>
<tr>
<td></td>
<td>The request contains a media type which the server or resource does not support.</td>
</tr>
<tr>
<td>500</td>
<td>Internal server error</td>
</tr>
<tr>
<td>503</td>
<td>Service unavailable</td>
</tr>
<tr>
<td></td>
<td>This error can occur if a file upload is still being processed via the custom apps API.</td>
</tr>
</tbody>
</table>
</div><h4 id=&quot;data-structure&quot;>Data structure</h4>
<p>The API returns all structured responses in JSON schema format.</p>
<h4 id=&quot;examples&quot;>Examples</h4>
<p>Code examples using the API can be found in the Kandji support <a href=&quot;https://github.com/kandji-inc/support/tree/main/api-tools&quot;>GitHub</a>.</p>
</body></html>

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.0.0
- Package version: 
- Generator version: 7.10.0
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://github.com/MScottBlake/kandji-openapi](https://github.com/MScottBlake/kandji-openapi)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://&lt;sub_domain&gt;.api.kandji.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**createAdeIntegration**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#createadeintegration) | **POST** /api/v1/integrations/apple/ade/ | Create ADE integration
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**deleteAdeIntegration**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#deleteadeintegration) | **DELETE** /api/v1/integrations/apple/ade/{ade_token_id} | Delete ADE integration
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**downloadAdePublicKey**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#downloadadepublickey) | **GET** /api/v1/integrations/apple/ade/public_key/ | Download ADE public key
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**getAdeDevice**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#getadedevice) | **GET** /api/v1/integrations/apple/ade/devices/{device_id} | Get ADE device
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**getAdeIntegration**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#getadeintegration) | **GET** /api/v1/integrations/apple/ade/{ade_token_id} | Get ADE integration
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**listAdeDevices**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#listadedevices) | **GET** /api/v1/integrations/apple/ade/devices | List ADE devices
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**listAdeIntegrations**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#listadeintegrations) | **GET** /api/v1/integrations/apple/ade | List ADE integrations
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**listDevicesAssociatedToAdeToken**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#listdevicesassociatedtoadetoken) | **GET** /api/v1/integrations/apple/ade/{ade_token_id}/devices | List devices associated to ADE token
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**renewAdeIntegration**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#renewadeintegration) | **POST** /api/v1/integrations/apple/ade/{ade_token_id}/renew | Renew ADE integration
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**updateAdeDevice**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#updateadedevice) | **PATCH** /api/v1/integrations/apple/ade/devices/{device_id} | Update ADE device
*AutomatedDeviceEnrollmentIntegrationsAPI* | [**updateAdeIntegration**](docs/AutomatedDeviceEnrollmentIntegrationsAPI.md#updateadeintegration) | **PATCH** /api/v1/integrations/apple/ade/{ade_token_id} | Update ADE integration
*BlueprintsAPI* | [**assignLibraryItem**](docs/BlueprintsAPI.md#assignlibraryitem) | **POST** /api/v1/blueprints/{blueprint_id}/assign-library-item | Assign Library Item
*BlueprintsAPI* | [**createBlueprint**](docs/BlueprintsAPI.md#createblueprint) | **POST** /api/v1/blueprints | Create Blueprint
*BlueprintsAPI* | [**deleteBlueprint**](docs/BlueprintsAPI.md#deleteblueprint) | **DELETE** /api/v1/blueprints/{blueprint_id} | Delete Blueprint
*BlueprintsAPI* | [**getBlueprint**](docs/BlueprintsAPI.md#getblueprint) | **GET** /api/v1/blueprints/{blueprint_id} | Get Blueprint
*BlueprintsAPI* | [**getBlueprintTemplates**](docs/BlueprintsAPI.md#getblueprinttemplates) | **GET** /api/v1/blueprints/templates/ | Get Blueprint Templates
*BlueprintsAPI* | [**getManualEnrollmentProfile**](docs/BlueprintsAPI.md#getmanualenrollmentprofile) | **GET** /api/v1/blueprints/{blueprint_id}/ota-enrollment-profile | Get Manual Enrollment Profile
*BlueprintsAPI* | [**listBlueprints**](docs/BlueprintsAPI.md#listblueprints) | **GET** /api/v1/blueprints | List Blueprints
*BlueprintsAPI* | [**listLibraryItems**](docs/BlueprintsAPI.md#listlibraryitems) | **GET** /api/v1/blueprints/{blueprint_id}/list-library-items | List Library Items
*BlueprintsAPI* | [**removeLibraryItem**](docs/BlueprintsAPI.md#removelibraryitem) | **POST** /api/v1/blueprints/{blueprint_id}/remove-library-item | Remove Library Item
*BlueprintsAPI* | [**updateBlueprint**](docs/BlueprintsAPI.md#updateblueprint) | **PATCH** /api/v1/blueprints/{blueprint_id} | Update Blueprint
*CustomAppsAPI* | [**createCustomApp**](docs/CustomAppsAPI.md#createcustomapp) | **POST** /api/v1/library/custom-apps | Create Custom App
*CustomAppsAPI* | [**deleteCustomApp**](docs/CustomAppsAPI.md#deletecustomapp) | **DELETE** /api/v1/library/custom-apps/{library_item_id} | Delete Custom App
*CustomAppsAPI* | [**getCustomApp**](docs/CustomAppsAPI.md#getcustomapp) | **GET** /api/v1/library/custom-apps/{library_item_id} | Get Custom App
*CustomAppsAPI* | [**listCustomApps**](docs/CustomAppsAPI.md#listcustomapps) | **GET** /api/v1/library/custom-apps | List Custom Apps
*CustomAppsAPI* | [**updateCustomApp**](docs/CustomAppsAPI.md#updatecustomapp) | **PATCH** /api/v1/library/custom-apps/{library_item_id} | Update Custom App
*CustomAppsAPI* | [**uploadCustomApp**](docs/CustomAppsAPI.md#uploadcustomapp) | **POST** /api/v1/library/custom-apps/upload | Upload Custom App
*CustomProfilesAPI* | [**createCustomProfile**](docs/CustomProfilesAPI.md#createcustomprofile) | **POST** /api/v1/library/custom-profiles | Create Custom Profile
*CustomProfilesAPI* | [**deleteCustomProfile**](docs/CustomProfilesAPI.md#deletecustomprofile) | **DELETE** /api/v1/library/custom-profiles/{library_item_id} | Delete Custom Profile
*CustomProfilesAPI* | [**getCustomProfile**](docs/CustomProfilesAPI.md#getcustomprofile) | **GET** /api/v1/library/custom-profiles/{library_item_id} | Get Custom Profile
*CustomProfilesAPI* | [**listCustomProfiles**](docs/CustomProfilesAPI.md#listcustomprofiles) | **GET** /api/v1/library/custom-profiles | List Custom Profiles
*CustomProfilesAPI* | [**updateCustomProfile**](docs/CustomProfilesAPI.md#updatecustomprofile) | **PATCH** /api/v1/library/custom-profiles/{library_item_id} | Update Custom Profile
*CustomScriptsAPI* | [**createCustomScript**](docs/CustomScriptsAPI.md#createcustomscript) | **POST** /api/v1/library/custom-scripts | Create Custom Script
*CustomScriptsAPI* | [**deleteCustomScript**](docs/CustomScriptsAPI.md#deletecustomscript) | **DELETE** /api/v1/library/custom-scripts/{library_item_id} | Delete Custom Script
*CustomScriptsAPI* | [**getCustomScript**](docs/CustomScriptsAPI.md#getcustomscript) | **GET** /api/v1/library/custom-scripts/{library_item_id} | Get Custom Script
*CustomScriptsAPI* | [**listCustomScripts**](docs/CustomScriptsAPI.md#listcustomscripts) | **GET** /api/v1/library/custom-scripts | List Custom Scripts
*CustomScriptsAPI* | [**updateCustomScript**](docs/CustomScriptsAPI.md#updatecustomscript) | **PATCH** /api/v1/library/custom-scripts/{library_item_id} | Update Custom Script
*DeviceActionsAPI* | [**clearPasscode**](docs/DeviceActionsAPI.md#clearpasscode) | **POST** /api/v1/devices/{device_id}/action/clearpasscode | Clear Passcode
*DeviceActionsAPI* | [**deleteDevice**](docs/DeviceActionsAPI.md#deletedevice) | **DELETE** /api/v1/devices/{device_id} | Delete Device
*DeviceActionsAPI* | [**deleteUser**](docs/DeviceActionsAPI.md#deleteuser) | **POST** /api/v1/devices/{device_id}/action/deleteuser | Delete User
*DeviceActionsAPI* | [**eraseDevice**](docs/DeviceActionsAPI.md#erasedevice) | **POST** /api/v1/devices/{device_id}/action/erase | Erase Device
*DeviceActionsAPI* | [**getDeviceCommands**](docs/DeviceActionsAPI.md#getdevicecommands) | **GET** /api/v1/devices/{device_id}/commands | Get Device Commands
*DeviceActionsAPI* | [**lockDevice**](docs/DeviceActionsAPI.md#lockdevice) | **POST** /api/v1/devices/{device_id}/action/lock | Lock Device
*DeviceActionsAPI* | [**reinstallAgent**](docs/DeviceActionsAPI.md#reinstallagent) | **POST** /api/v1/devices/{device_id}/action/reinstallagent | Reinstall Agent
*DeviceActionsAPI* | [**remoteDesktop**](docs/DeviceActionsAPI.md#remotedesktop) | **POST** /api/v1/devices/{device_id}/action/remotedesktop | Remote Desktop
*DeviceActionsAPI* | [**renewMdmProfile**](docs/DeviceActionsAPI.md#renewmdmprofile) | **POST** /api/v1/devices/{device_id}/action/renewmdmprofile | Renew MDM Profile
*DeviceActionsAPI* | [**restartDevice**](docs/DeviceActionsAPI.md#restartdevice) | **POST** /api/v1/devices/{device_id}/action/restart | Restart Device
*DeviceActionsAPI* | [**sendBlankpush**](docs/DeviceActionsAPI.md#sendblankpush) | **POST** /api/v1/devices/{device_id}/action/blankpush | Send Blankpush
*DeviceActionsAPI* | [**setName**](docs/DeviceActionsAPI.md#setname) | **POST** /api/v1/devices/{device_id}/action/setname | Set Name
*DeviceActionsAPI* | [**shutdown**](docs/DeviceActionsAPI.md#shutdown) | **POST** /api/v1/devices/{device_id}/action/shutdown | Shutdown
*DeviceActionsAPI* | [**unlockAccount**](docs/DeviceActionsAPI.md#unlockaccount) | **POST** /api/v1/devices/{device_id}/action/unlockaccount | Unlock Account
*DeviceActionsAPI* | [**updateInventory**](docs/DeviceActionsAPI.md#updateinventory) | **POST** /api/v1/devices/{device_id}/action/updateinventory | Update Inventory
*DeviceInformationAPI* | [**cancelLostMode**](docs/DeviceInformationAPI.md#cancellostmode) | **DELETE** /api/v1/devices/{device_id}/details/lostmode | Cancel Lost Mode
*DeviceInformationAPI* | [**getDeviceActivity**](docs/DeviceInformationAPI.md#getdeviceactivity) | **GET** /api/v1/devices/{device_id}/activity | Get Device Activity
*DeviceInformationAPI* | [**getDeviceApps**](docs/DeviceInformationAPI.md#getdeviceapps) | **GET** /api/v1/devices/{device_id}/apps | Get Device Apps
*DeviceInformationAPI* | [**getDeviceDetails**](docs/DeviceInformationAPI.md#getdevicedetails) | **GET** /api/v1/devices/{device_id}/details | Get Device Details
*DeviceInformationAPI* | [**getDeviceLibraryItems**](docs/DeviceInformationAPI.md#getdevicelibraryitems) | **GET** /api/v1/devices/{device_id}/library-items | Get Device Library Items
*DeviceInformationAPI* | [**getDeviceLostModeDetails**](docs/DeviceInformationAPI.md#getdevicelostmodedetails) | **GET** /api/v1/devices/{device_id}/details/lostmode | Get Device Lost Mode details
*DeviceInformationAPI* | [**getDeviceParameters**](docs/DeviceInformationAPI.md#getdeviceparameters) | **GET** /api/v1/devices/{device_id}/parameters | Get Device Parameters
*DeviceInformationAPI* | [**getDeviceStatus**](docs/DeviceInformationAPI.md#getdevicestatus) | **GET** /api/v1/devices/{device_id}/status | Get Device Status
*DeviceInformationAPI* | [**listDevices**](docs/DeviceInformationAPI.md#listdevices) | **GET** /api/v1/devices | List Devices
*DeviceSecretsAPI* | [**getActivationLockBypassCode**](docs/DeviceSecretsAPI.md#getactivationlockbypasscode) | **GET** /api/v1/devices/{device_id}/secrets/bypasscode | Get Activation Lock Bypass Code
*DeviceSecretsAPI* | [**getFilevaultRecoveryKey**](docs/DeviceSecretsAPI.md#getfilevaultrecoverykey) | **GET** /api/v1/devices/{device_id}/secrets/filevaultkey | Get FileVault Recovery Key
*DeviceSecretsAPI* | [**getRecoveryLockPassword**](docs/DeviceSecretsAPI.md#getrecoverylockpassword) | **GET** /api/v1/devices/{device_id}/secrets/recoverypassword | Get Recovery Lock Password
*DeviceSecretsAPI* | [**getUnlockPin**](docs/DeviceSecretsAPI.md#getunlockpin) | **GET** /api/v1/devices/{device_id}/secrets/unlockpin | Get Unlock Pin
*InHouseAppsAPI* | [**createInhouseApp**](docs/InHouseAppsAPI.md#createinhouseapp) | **POST** /api/v1/library/ipa-apps | Create In-House App
*InHouseAppsAPI* | [**deleteInhouseApp**](docs/InHouseAppsAPI.md#deleteinhouseapp) | **DELETE** /api/v1/library/ipa-apps/{library_item_id} | Delete In-House App
*InHouseAppsAPI* | [**getInhouseApp**](docs/InHouseAppsAPI.md#getinhouseapp) | **GET** /api/v1/library/ipa-apps/{library_item_id} | Get In-House App
*InHouseAppsAPI* | [**listInhouseApps**](docs/InHouseAppsAPI.md#listinhouseapps) | **GET** /api/v1/library/ipa-apps | List In-House Apps
*InHouseAppsAPI* | [**updateInhouseApp**](docs/InHouseAppsAPI.md#updateinhouseapp) | **PATCH** /api/v1/library/ipa-apps/{library_item_id} | Update In-House App
*InHouseAppsAPI* | [**uploadInhouseApp**](docs/InHouseAppsAPI.md#uploadinhouseapp) | **POST** /api/v1/library/ipa-apps/upload | Upload In-House App
*InHouseAppsAPI* | [**uploadInhouseAppStatus**](docs/InHouseAppsAPI.md#uploadinhouseappstatus) | **GET** /api/v1/library/ipa-apps/upload/{pending_upload_id}/status | Upload In-House App Status
*LibraryItemsAPI* | [**getLibraryItemActivity**](docs/LibraryItemsAPI.md#getlibraryitemactivity) | **GET** /api/v1/library/library-items/{library_item_id}/activity | Get Library Item Activity
*LibraryItemsAPI* | [**getLibraryItemStatuses**](docs/LibraryItemsAPI.md#getlibraryitemstatuses) | **GET** /api/v1/library/library-items/{library_item_id}/status | Get Library Item Statuses
*LostModeAPI* | [**disableLostMode**](docs/LostModeAPI.md#disablelostmode) | **POST** /api/v1/devices/{device_id}/action/disablelostmode | Disable Lost Mode
*LostModeAPI* | [**enableLostMode**](docs/LostModeAPI.md#enablelostmode) | **POST** /api/v1/devices/{device_id}/action/enablelostmode | Enable Lost Mode
*LostModeAPI* | [**playLostModeSound**](docs/LostModeAPI.md#playlostmodesound) | **POST** /api/v1/devices/{device_id}/action/playlostmodesound | Play Lost Mode Sound
*LostModeAPI* | [**updateLocation**](docs/LostModeAPI.md#updatelocation) | **POST** /api/v1/devices/{device_id}/action/updatelocation | Update Location
*NotesAPI* | [**createDeviceNote**](docs/NotesAPI.md#createdevicenote) | **POST** /api/v1/devices/{device_id}/notes | Create Device Note
*NotesAPI* | [**deleteDeviceNote**](docs/NotesAPI.md#deletedevicenote) | **DELETE** /api/v1/devices/{device_id}/notes/{note_id} | Delete Device Note
*NotesAPI* | [**getDeviceNotes**](docs/NotesAPI.md#getdevicenotes) | **GET** /api/v1/devices/{device_id}/notes | Get Device Notes
*NotesAPI* | [**retrieveDeviceNote**](docs/NotesAPI.md#retrievedevicenote) | **GET** /api/v1/devices/{device_id}/notes/{note_id} | Retrieve Device Note
*NotesAPI* | [**updateDeviceNote**](docs/NotesAPI.md#updatedevicenote) | **PATCH** /api/v1/devices/{device_id}/notes/{note_id} | Update Device Note
*PrismAPI* | [**activationLock**](docs/PrismAPI.md#activationlock) | **GET** /api/v1/prism/activation_lock | Activation lock
*PrismAPI* | [**applicationFirewall**](docs/PrismAPI.md#applicationfirewall) | **GET** /api/v1/prism/application_firewall | Application firewall
*PrismAPI* | [**applications**](docs/PrismAPI.md#applications) | **GET** /api/v1/prism/apps | Applications
*PrismAPI* | [**certificates**](docs/PrismAPI.md#certificates) | **GET** /api/v1/prism/certificates | Certificates
*PrismAPI* | [**count**](docs/PrismAPI.md#count) | **GET** /api/v1/prism/count | Count
*PrismAPI* | [**desktopAndScreensaver**](docs/PrismAPI.md#desktopandscreensaver) | **GET** /api/v1/prism/desktop_and_screensaver | Desktop and Screensaver
*PrismAPI* | [**deviceInformation**](docs/PrismAPI.md#deviceinformation) | **GET** /api/v1/prism/device_information | Device information
*PrismAPI* | [**filevault**](docs/PrismAPI.md#filevault) | **GET** /api/v1/prism/filevault | FileVault
*PrismAPI* | [**gatekeeperAndXprotect**](docs/PrismAPI.md#gatekeeperandxprotect) | **GET** /api/v1/prism/gatekeeper_and_xprotect | Gatekeeper and XProtect
*PrismAPI* | [**getCategoryExport**](docs/PrismAPI.md#getcategoryexport) | **GET** /api/v1/prism/export/{export_id} | Get category export
*PrismAPI* | [**installedProfiles**](docs/PrismAPI.md#installedprofiles) | **GET** /api/v1/prism/installed_profiles | Installed profiles
*PrismAPI* | [**kernelExtensions**](docs/PrismAPI.md#kernelextensions) | **GET** /api/v1/prism/kernel_extensions | Kernel Extensions
*PrismAPI* | [**launchAgentsAndDaemons**](docs/PrismAPI.md#launchagentsanddaemons) | **GET** /api/v1/prism/launch_agents_and_daemons | Launch Agents and Daemons
*PrismAPI* | [**localUsers**](docs/PrismAPI.md#localusers) | **GET** /api/v1/prism/local_users | Local users
*PrismAPI* | [**requestCategoryExport**](docs/PrismAPI.md#requestcategoryexport) | **POST** /api/v1/prism/export | Request category export
*PrismAPI* | [**startupSettings**](docs/PrismAPI.md#startupsettings) | **GET** /api/v1/prism/startup_settings | Startup settings
*PrismAPI* | [**systemExtensions**](docs/PrismAPI.md#systemextensions) | **GET** /api/v1/prism/system_extensions | System Extensions
*PrismAPI* | [**transparencyDatabase**](docs/PrismAPI.md#transparencydatabase) | **GET** /api/v1/prism/transparency_database | Transparency database
*SelfServiceAPI* | [**listSelfServiceCategories**](docs/SelfServiceAPI.md#listselfservicecategories) | **GET** /api/v1/self-service/categories | List Self Service Categories
*SettingsAPI* | [**licensing**](docs/SettingsAPI.md#licensing) | **GET** /api/v1/settings/licensing | Licensing
*TagsAPI* | [**createTag**](docs/TagsAPI.md#createtag) | **POST** /api/v1/tags | Create Tag
*TagsAPI* | [**deleteTag**](docs/TagsAPI.md#deletetag) | **DELETE** /api/v1/tags/{tag_id} | Delete Tag
*TagsAPI* | [**getTags**](docs/TagsAPI.md#gettags) | **GET** /api/v1/tags | Get Tags
*TagsAPI* | [**updateTag**](docs/TagsAPI.md#updatetag) | **PATCH** /api/v1/tags/{tag_id} | Update Tag
*ThreatsAPI* | [**getThreatDetails**](docs/ThreatsAPI.md#getthreatdetails) | **GET** /api/v1/threat-details | Get Threat Details
*UsersAPI* | [**getUser**](docs/UsersAPI.md#getuser) | **GET** /api/v1/users/{user_id} | Get User
*UsersAPI* | [**listUsers**](docs/UsersAPI.md#listusers) | **GET** /api/v1/users | List Users


## Documentation For Models



<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="bearer"></a>
### bearer

- **Type**: HTTP Bearer Token authentication (API Token)


# How do I migrate from the Swift 5 generator to the swift 6 generator?

https://openapi-generator.tech/docs/faq-generators#how-do-i-migrate-from-the-swift-5-generator-to-the-swift-6-generator

### How do I implement bearer token authentication with URLSession on the Swift 5 API client?

https://openapi-generator.tech/docs/faq-generators#how-do-i-implement-bearer-token-authentication-with-urlsession-on-the-swift-5-api-client

## Author

mitchelsblake@gmail.com

