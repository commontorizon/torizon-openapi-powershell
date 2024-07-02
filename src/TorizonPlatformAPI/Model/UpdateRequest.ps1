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

.PARAMETER Custom
No description available.
.PARAMETER Fleets
No description available.
.PARAMETER Devices
No description available.
.PARAMETER PackageIds
No description available.
.OUTPUTS

UpdateRequest<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIUpdateRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Custom},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Fleets},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Devices},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${PackageIds}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "custom" = ${Custom}
            "fleets" = ${Fleets}
            "devices" = ${Devices}
            "packageIds" = ${PackageIds}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateRequest<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToUpdateRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIUpdateRequest
        $AllProperties = ("custom", "fleets", "devices", "packageIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "custom"))) { #optional property not found
            $Custom = $null
        } else {
            $Custom = $JsonParameters.PSobject.Properties["custom"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fleets"))) { #optional property not found
            $Fleets = $null
        } else {
            $Fleets = $JsonParameters.PSobject.Properties["fleets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devices"))) { #optional property not found
            $Devices = $null
        } else {
            $Devices = $JsonParameters.PSobject.Properties["devices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "packageIds"))) { #optional property not found
            $PackageIds = $null
        } else {
            $PackageIds = $JsonParameters.PSobject.Properties["packageIds"].value
        }

        $PSO = [PSCustomObject]@{
            "custom" = ${Custom}
            "fleets" = ${Fleets}
            "devices" = ${Devices}
            "packageIds" = ${PackageIds}
        }

        return $PSO
    }

}

