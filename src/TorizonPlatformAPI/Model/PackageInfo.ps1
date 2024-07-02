#
# Torizon OTA
#  This API is rate limited and will return the following headers for each API call.    - X-RateLimit-Limit - The total number of requests allowed within a time period   - X-RateLimit-Remaining - The total number of requests still allowed until the end of the rate limiting period   - X-RateLimit-Reset - The number of seconds until the limit is fully reset  In addition, if an API client is rate limited, it will receive a HTTP 420 response with the following header:     - Retry-After - The number of seconds to wait until this request is allowed  
# Version: 2.0-Beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER PackageVersion
No description available.
.PARAMETER PackageName
No description available.
.PARAMETER Checksum
No description available.
.OUTPUTS

PackageInfo<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIPackageInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PackageVersion},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PackageName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Checksum}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIPackageInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $PackageVersion) {
            throw "invalid value for 'PackageVersion', 'PackageVersion' cannot be null."
        }

        if ($null -eq $PackageName) {
            throw "invalid value for 'PackageName', 'PackageName' cannot be null."
        }

        if ($null -eq $Checksum) {
            throw "invalid value for 'Checksum', 'Checksum' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "packageVersion" = ${PackageVersion}
            "packageName" = ${PackageName}
            "checksum" = ${Checksum}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PackageInfo<PSCustomObject>

.DESCRIPTION

Convert from JSON to PackageInfo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PackageInfo<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToPackageInfo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIPackageInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIPackageInfo
        $AllProperties = ("packageVersion", "packageName", "checksum")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'packageVersion' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "packageVersion"))) {
            throw "Error! JSON cannot be serialized due to the required property 'packageVersion' missing."
        } else {
            $PackageVersion = $JsonParameters.PSobject.Properties["packageVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "packageName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'packageName' missing."
        } else {
            $PackageName = $JsonParameters.PSobject.Properties["packageName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "checksum"))) {
            throw "Error! JSON cannot be serialized due to the required property 'checksum' missing."
        } else {
            $Checksum = $JsonParameters.PSobject.Properties["checksum"].value
        }

        $PSO = [PSCustomObject]@{
            "packageVersion" = ${PackageVersion}
            "packageName" = ${PackageName}
            "checksum" = ${Checksum}
        }

        return $PSO
    }

}
