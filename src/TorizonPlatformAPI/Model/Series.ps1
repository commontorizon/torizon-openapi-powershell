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

.PARAMETER Points
No description available.
.PARAMETER Meta
No description available.
.PARAMETER Name
No description available.
.OUTPUTS

Series<PSCustomObject>
#>

function Initialize-TorizonPlatformAPISeries {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Points},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Meta},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPISeries' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Meta) {
            throw "invalid value for 'Meta', 'Meta' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "points" = ${Points}
            "meta" = ${Meta}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Series<PSCustomObject>

.DESCRIPTION

Convert from JSON to Series<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Series<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToSeries {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPISeries' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPISeries
        $AllProperties = ("points", "meta", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'meta' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "meta"))) {
            throw "Error! JSON cannot be serialized due to the required property 'meta' missing."
        } else {
            $Meta = $JsonParameters.PSobject.Properties["meta"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "points"))) { #optional property not found
            $Points = $null
        } else {
            $Points = $JsonParameters.PSobject.Properties["points"].value
        }

        $PSO = [PSCustomObject]@{
            "points" = ${Points}
            "meta" = ${Meta}
            "name" = ${Name}
        }

        return $PSO
    }

}
