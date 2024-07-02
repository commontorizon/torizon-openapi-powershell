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

.PARAMETER LastSeen
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER DeviceStatus
No description available.
.PARAMETER Notes
No description available.
.PARAMETER DeviceUuid
No description available.
.PARAMETER DeviceId
No description available.
.PARAMETER DeviceName
No description available.
.PARAMETER ActivatedAt
No description available.
.OUTPUTS

DeviceInfoBasic<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIDeviceInfoBasic {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastSeen},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("NotSeen", "Error", "UpToDate", "UpdatePending", "OutDated")]
        [PSCustomObject]
        ${DeviceStatus},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Notes},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceUuid},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DeviceName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ActivatedAt}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIDeviceInfoBasic' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $CreatedAt) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($null -eq $DeviceStatus) {
            throw "invalid value for 'DeviceStatus', 'DeviceStatus' cannot be null."
        }

        if ($null -eq $DeviceUuid) {
            throw "invalid value for 'DeviceUuid', 'DeviceUuid' cannot be null."
        }

        if ($null -eq $DeviceId) {
            throw "invalid value for 'DeviceId', 'DeviceId' cannot be null."
        }

        if ($null -eq $DeviceName) {
            throw "invalid value for 'DeviceName', 'DeviceName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "lastSeen" = ${LastSeen}
            "createdAt" = ${CreatedAt}
            "deviceStatus" = ${DeviceStatus}
            "notes" = ${Notes}
            "deviceUuid" = ${DeviceUuid}
            "deviceId" = ${DeviceId}
            "deviceName" = ${DeviceName}
            "activatedAt" = ${ActivatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DeviceInfoBasic<PSCustomObject>

.DESCRIPTION

Convert from JSON to DeviceInfoBasic<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DeviceInfoBasic<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToDeviceInfoBasic {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIDeviceInfoBasic' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIDeviceInfoBasic
        $AllProperties = ("lastSeen", "createdAt", "deviceStatus", "notes", "deviceUuid", "deviceId", "deviceName", "activatedAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'createdAt' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceStatus"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deviceStatus' missing."
        } else {
            $DeviceStatus = $JsonParameters.PSobject.Properties["deviceStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceUuid"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deviceUuid' missing."
        } else {
            $DeviceUuid = $JsonParameters.PSobject.Properties["deviceUuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deviceId' missing."
        } else {
            $DeviceId = $JsonParameters.PSobject.Properties["deviceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deviceName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'deviceName' missing."
        } else {
            $DeviceName = $JsonParameters.PSobject.Properties["deviceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastSeen"))) { #optional property not found
            $LastSeen = $null
        } else {
            $LastSeen = $JsonParameters.PSobject.Properties["lastSeen"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notes"))) { #optional property not found
            $Notes = $null
        } else {
            $Notes = $JsonParameters.PSobject.Properties["notes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activatedAt"))) { #optional property not found
            $ActivatedAt = $null
        } else {
            $ActivatedAt = $JsonParameters.PSobject.Properties["activatedAt"].value
        }

        $PSO = [PSCustomObject]@{
            "lastSeen" = ${LastSeen}
            "createdAt" = ${CreatedAt}
            "deviceStatus" = ${DeviceStatus}
            "notes" = ${Notes}
            "deviceUuid" = ${DeviceUuid}
            "deviceId" = ${DeviceId}
            "deviceName" = ${DeviceName}
            "activatedAt" = ${ActivatedAt}
        }

        return $PSO
    }

}
