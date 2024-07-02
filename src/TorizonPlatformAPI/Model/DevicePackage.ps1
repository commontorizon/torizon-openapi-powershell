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

.PARAMETER Version
No description available.
.PARAMETER Checksum
No description available.
.PARAMETER Component
No description available.
.PARAMETER Name
No description available.
.OUTPUTS

DevicePackage<PSCustomObject>
#>

function Initialize-TorizonPlatformAPIDevicePackage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Checksum},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Component},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIDevicePackage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Version) {
            throw "invalid value for 'Version', 'Version' cannot be null."
        }

        if ($null -eq $Checksum) {
            throw "invalid value for 'Checksum', 'Checksum' cannot be null."
        }

        if ($null -eq $Component) {
            throw "invalid value for 'Component', 'Component' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "checksum" = ${Checksum}
            "component" = ${Component}
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DevicePackage<PSCustomObject>

.DESCRIPTION

Convert from JSON to DevicePackage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DevicePackage<PSCustomObject>
#>
function ConvertFrom-TorizonPlatformAPIJsonToDevicePackage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: TorizonPlatformAPI => TorizonPlatformAPIDevicePackage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TorizonPlatformAPIDevicePackage
        $AllProperties = ("version", "checksum", "component", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'version' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) {
            throw "Error! JSON cannot be serialized due to the required property 'version' missing."
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "checksum"))) {
            throw "Error! JSON cannot be serialized due to the required property 'checksum' missing."
        } else {
            $Checksum = $JsonParameters.PSobject.Properties["checksum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "component"))) {
            throw "Error! JSON cannot be serialized due to the required property 'component' missing."
        } else {
            $Component = $JsonParameters.PSobject.Properties["component"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "checksum" = ${Checksum}
            "component" = ${Component}
            "name" = ${Name}
        }

        return $PSO
    }

}
