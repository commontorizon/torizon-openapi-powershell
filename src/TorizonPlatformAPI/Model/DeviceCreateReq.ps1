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

.PARAMETER DeviceName
No description available.
.PARAMETER DeviceId
No description available.
.OUTPUTS

DeviceCreateReq<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIDeviceCreateReq {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceId}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIDeviceCreateReq' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $DeviceId) {
            throw "invalid value for 'DeviceId', 'DeviceId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "deviceName" = ${DeviceName}
            "deviceId" = ${DeviceId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DeviceCreateReq<PSCustomObject>

.DESCRIPTION

Convert from JSON to DeviceCreateReq<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DeviceCreateReq<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToDeviceCreateReq {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIDeviceCreateReq' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIDeviceCreateReq
        $AllProperties = ("deviceName", "deviceId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'deviceId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deviceId' missing."
        } else {
            $DeviceId = $JsonParameters.PSobject.Properties["deviceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceName"))) { #optional property not found
            $DeviceName = $null
        } else {
            $DeviceName = $JsonParameters.PSobject.Properties["deviceName"].value
        }

        $PSO = [PSCustomObject]@{
            "deviceName" = ${DeviceName}
            "deviceId" = ${DeviceId}
        }

        return $PSO
    }

}
