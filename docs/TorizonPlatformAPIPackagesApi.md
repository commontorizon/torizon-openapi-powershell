# TorizonPlatformAPI.TorizonPlatformAPI\Api.TorizonPlatformAPIPackagesApi

All URIs are relative to *https://app.torizon.io/api/v2beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-TorizonPlatformAPIDeletePackagesPackageid**](TorizonPlatformAPIPackagesApi.md#Invoke-TorizonPlatformAPIDeletePackagesPackageid) | **DELETE** /packages/{packageId} | Delete a package
[**Get-TorizonPlatformAPIPackages**](TorizonPlatformAPIPackagesApi.md#Get-TorizonPlatformAPIPackages) | **GET** /packages | Retrieve metadata about packages in your repository
[**Get-TorizonPlatformAPIPackagesExternal**](TorizonPlatformAPIPackagesApi.md#Get-TorizonPlatformAPIPackagesExternal) | **GET** /packages_external | Retrieve metadata about packages in your repository from other sources
[**Get-TorizonPlatformAPIPackagesExternalInfo**](TorizonPlatformAPIPackagesApi.md#Get-TorizonPlatformAPIPackagesExternalInfo) | **GET** /packages_external/info | Fetch information about external package sources
[**Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName**](TorizonPlatformAPIPackagesApi.md#Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName) | **GET** /packages_external/refresh/{source_file_name} | Refresh metadata from an external package source
[**Invoke-TorizonPlatformAPIPatchPackagesPackageid**](TorizonPlatformAPIPackagesApi.md#Invoke-TorizonPlatformAPIPatchPackagesPackageid) | **PATCH** /packages/{packageId} | Edit metadata about a package
[**Submit-TorizonPlatformAPIPackages**](TorizonPlatformAPIPackagesApi.md#Submit-TorizonPlatformAPIPackages) | **POST** /packages | Upload a new package


<a id="Invoke-TorizonPlatformAPIDeletePackagesPackageid"></a>
# **Invoke-TorizonPlatformAPIDeletePackagesPackageid**
> void Invoke-TorizonPlatformAPIDeletePackagesPackageid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PackageId] <String><br>

Delete a package

 Deletes a package and its metadata from your repository. Once you delete a package, it will no longer be a valid install target. Any devices that still have the deleted package installed will show as ""Package not  authorized by your repository"".         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$PackageId = "MyPackageId" # String | 

# Delete a package
try {
    $Result = Invoke-TorizonPlatformAPIDeletePackagesPackageid -PackageId $PackageId
} catch {
    Write-Host ("Exception occurred when calling Invoke-TorizonPlatformAPIDeletePackagesPackageid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PackageId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIPackages"></a>
# **Get-TorizonPlatformAPIPackages**
> PaginationResultPackage Get-TorizonPlatformAPIPackages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdContains] <String><br>

Retrieve metadata about packages in your repository

 Returns a list of user-added packages in your repository. Does not include packages from other source, such as official TorizonCore images published by Toradex.  May be filtered using the `idContains` query parameter.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Offset = 789 # Int64 |  (optional)
$Limit = 789 # Int64 |  (optional)
$IdContains = "MyIdContains" # String |  (optional)

# Retrieve metadata about packages in your repository
try {
    $Result = Get-TorizonPlatformAPIPackages -Offset $Offset -Limit $Limit -IdContains $IdContains
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIPackages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int64**|  | [optional] 
 **Limit** | **Int64**|  | [optional] 
 **IdContains** | **String**|  | [optional] 

### Return type

[**PaginationResultPackage**](PaginationResultPackage.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIPackagesExternal"></a>
# **Get-TorizonPlatformAPIPackagesExternal**
> PaginationResultExternalPackage Get-TorizonPlatformAPIPackagesExternal<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int64]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdContains] <String><br>

Retrieve metadata about packages in your repository from other sources

 This endpoint returns the list of packages in your repository that come from external sources, like TorizonCore images published by Toradex. Can be filtered by package name.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Offset = 789 # Int64 |  (optional)
$Limit = 789 # Int64 |  (optional)
$IdContains = "MyIdContains" # String |  (optional)

# Retrieve metadata about packages in your repository from other sources
try {
    $Result = Get-TorizonPlatformAPIPackagesExternal -Offset $Offset -Limit $Limit -IdContains $IdContains
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIPackagesExternal: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int64**|  | [optional] 
 **Limit** | **Int64**|  | [optional] 
 **IdContains** | **String**|  | [optional] 

### Return type

[**PaginationResultExternalPackage**](PaginationResultExternalPackage.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIPackagesExternalInfo"></a>
# **Get-TorizonPlatformAPIPackagesExternalInfo**
> System.Collections.Hashtable Get-TorizonPlatformAPIPackagesExternalInfo<br>

Fetch information about external package sources

 This endpoint fetches information about external package sources authorized in your repository. External package sources are how you can safely include packages from other sources in your repository. For example, TorizonCore OS images and bootloader binaries published by Toradex are published as an external package source, and trusted by your repository by default.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Fetch information about external package sources
try {
    $Result = Get-TorizonPlatformAPIPackagesExternalInfo
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIPackagesExternalInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**System.Collections.Hashtable**](DelegationInfo.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName"></a>
# **Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName**
> void Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceFileName] <String><br>

Refresh metadata from an external package source

 This endpoint refreshes the list of packages in your repository that come from the specified external source. For example ""tdx-nightly.json"" is the external source for all Toradex-published TorizonCore nightly builds.  External package sources can expire periodically, with the expiration date set by the external publisher. This helps ensure that package lists remain fresh and up to date. Your devices will not install packages from an expired source. Calling this endpoint will attempt to fetch the latest info from the external publisher.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$SourceFileName = "MySourceFileName" # String | 

# Refresh metadata from an external package source
try {
    $Result = Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName -SourceFileName $SourceFileName
} catch {
    Write-Host ("Exception occurred when calling Get-TorizonPlatformAPIPackagesExternalRefreshSourceFileName: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceFileName** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-TorizonPlatformAPIPatchPackagesPackageid"></a>
# **Invoke-TorizonPlatformAPIPatchPackagesPackageid**
> Package Invoke-TorizonPlatformAPIPatchPackagesPackageid<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PackageId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EditPackage] <PSCustomObject><br>

Edit metadata about a package

 Edits the metadata about a package.  Not all metadata can be edited. The package name and version cannot be changed, and the contents of the package cannot be changed. (You should upload a new package, with a new version number, if the contents of the package change.) With this endpoint, you can edit custom metadata fields, package comments, external fetch URIs, and the list of compatible components.         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$PackageId = "MyPackageId" # String | 
$EditPackage = Initialize-EditPackage -Comment "MyComment" -ProprietaryMeta "MyProprietaryMeta" -Uri "MyUri" -HardwareIds "MyHardwareIds" # EditPackage | 

# Edit metadata about a package
try {
    $Result = Invoke-TorizonPlatformAPIPatchPackagesPackageid -PackageId $PackageId -EditPackage $EditPackage
} catch {
    Write-Host ("Exception occurred when calling Invoke-TorizonPlatformAPIPatchPackagesPackageid: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PackageId** | **String**|  | 
 **EditPackage** | [**EditPackage**](EditPackage.md)|  | 

### Return type

[**Package**](Package.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-TorizonPlatformAPIPackages"></a>
# **Submit-TorizonPlatformAPIPackages**
> Package Submit-TorizonPlatformAPIPackages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Version] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TargetFormat] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentLength] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Body] <System.IO.FileInfo><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HardwareId] <String[]><br>

Upload a new package

 Upload a new package to your repository. The file to be added should be in the body as an octet-stream, and the content-length header must be specified. You also must supply a package name and version, and the hardwareId(s) the package is built for (for example, `docker-compose` for an application package).         

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Name = "MyName" # String | 
$Version = "MyVersion" # String | 
$TargetFormat = "MyTargetFormat" # String | 
$ContentLength = 56 # Int32 | 
$Body =  # System.IO.FileInfo | 
$HardwareId = "MyHardwareId" # String[] |  (optional)

# Upload a new package
try {
    $Result = Submit-TorizonPlatformAPIPackages -Name $Name -Version $Version -TargetFormat $TargetFormat -ContentLength $ContentLength -Body $Body -HardwareId $HardwareId
} catch {
    Write-Host ("Exception occurred when calling Submit-TorizonPlatformAPIPackages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**|  | 
 **Version** | **String**|  | 
 **TargetFormat** | **String**|  | 
 **ContentLength** | **Int32**|  | 
 **Body** | **System.IO.FileInfo****System.IO.FileInfo**|  | 
 **HardwareId** | [**String[]**](String.md)|  | [optional] 

### Return type

[**Package**](Package.md) (PSCustomObject)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

