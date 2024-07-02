#
# Torizon OTA
#  This API is rate limited and will return the following headers for each API call.    - X-RateLimit-Limit - The total number of requests allowed within a time period   - X-RateLimit-Remaining - The total number of requests still allowed until the end of the rate limiting period   - X-RateLimit-Reset - The number of seconds until the limit is fully reset  In addition, if an API client is rate limited, it will receive a HTTP 420 response with the following header:     - Retry-After - The number of seconds to wait until this request is allowed  
# Version: 2.0-Beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS
    Gets the headers for HTTP signature.
.DESCRIPTION
    Gets the headers for the http signature.
.PARAMETER Method
   HTTP method
.PARAMETER UriBuilder
    UriBuilder for url and query parameter
.PARAMETER Body
    Request body
.OUTPUTS
    Hashtable
#>
function Get-TorizonPlatformAPIHttpSignedHeader {
    param(
        [string]$Method,
        [System.UriBuilder]$UriBuilder,
        [string]$Body,
        [hashtable]$RequestHeader
    )

    $HEADER_REQUEST_TARGET = '(request-target)'
    # The time when the HTTP signature was generated.
    $HEADER_CREATED = '(created)'
    # The time when the HTTP signature expires. The API server should reject HTTP requests
    # that have expired.
    $HEADER_EXPIRES = '(expires)'
    # The 'Host' header.
    $HEADER_HOST = 'Host'
    # The 'Date' header.
    $HEADER_DATE = 'Date'
    # When the 'Digest' header is included in the HTTP signature, the client automatically
    # computes the digest of the HTTP request body, per RFC 3230.
    $HEADER_DIGEST = 'Digest'
    # The 'Authorization' header is automatically generated by the client. It includes
    # the list of signed headers and a base64-encoded signature.
    $HEADER_AUTHORIZATION = 'Authorization'

    #Hash table to store singed headers
    $HttpSignedRequestHeader = @{ }
    $HttpSignatureHeader = @{ }
    $TargetHost = $UriBuilder.Host
    $httpSigningConfiguration = Get-TorizonPlatformAPIConfigurationHttpSigning
    $Digest = $null

    #get the body digest
    $bodyHash = Get-TorizonPlatformAPIStringHash -String $Body -HashName $httpSigningConfiguration.HashAlgorithm
    if ($httpSigningConfiguration.HashAlgorithm -eq "SHA256") {
        $Digest = [String]::Format("SHA-256={0}", [Convert]::ToBase64String($bodyHash))
    } elseif ($httpSigningConfiguration.HashAlgorithm -eq "SHA512") {
        $Digest = [String]::Format("SHA-512={0}", [Convert]::ToBase64String($bodyHash))
    }

    $dateTime = Get-Date
    #get the date in UTC
    $currentDate = $dateTime.ToUniversalTime().ToString("r")

    foreach ($headerItem in $httpSigningConfiguration.HttpSigningHeader) {

        if ($headerItem -eq $HEADER_REQUEST_TARGET) {
            $requestTargetPath = [string]::Format("{0} {1}{2}", $Method.ToLower(), $UriBuilder.Path, $UriBuilder.Query)
            $HttpSignatureHeader.Add($HEADER_REQUEST_TARGET, $requestTargetPath)
        } elseif ($headerItem -eq $HEADER_CREATED) {
            $created = Get-TorizonPlatformAPIUnixTime -Date $dateTime -TotalTime TotalSeconds
            $HttpSignatureHeader.Add($HEADER_CREATED, $created)
        } elseif ($headerItem -eq $HEADER_EXPIRES) {
            $expire = $dateTime.AddSeconds($httpSigningConfiguration.SignatureValidityPeriod)
            $expireEpocTime = Get-TorizonPlatformAPIUnixTime -Date $expire -TotalTime TotalSeconds
            $HttpSignatureHeader.Add($HEADER_EXPIRES, $expireEpocTime)
        } elseif ($headerItem -eq $HEADER_HOST) {
            $HttpSignedRequestHeader[$HEADER_HOST] = $TargetHost
            $HttpSignatureHeader.Add($HEADER_HOST.ToLower(), $TargetHost)
        } elseif ($headerItem -eq $HEADER_DATE) {
            $HttpSignedRequestHeader[$HEADER_DATE] = $currentDate
            $HttpSignatureHeader.Add($HEADER_DATE.ToLower(), $currentDate)
        } elseif ($headerItem -eq $HEADER_DIGEST) {
            $HttpSignedRequestHeader[$HEADER_DIGEST] = $Digest
            $HttpSignatureHeader.Add($HEADER_DIGEST.ToLower(), $Digest)
        } elseif($RequestHeader.ContainsKey($headerItem)) {
            $HttpSignatureHeader.Add($headerItem.ToLower(), $RequestHeader[$headerItem])
        } else {
            throw "Cannot sign HTTP request. Request does not contain the $headerItem header."
        }
    }

    # header's name separated by space
    $headersKeysString = $HttpSignatureHeader.Keys -join " "
    $headerValuesList = @()
    foreach ($item in $HttpSignatureHeader.GetEnumerator()) {
        $headerValuesList += [string]::Format("{0}: {1}", $item.Name, $item.Value)
    }
    #Concatenate headers value separated by new line
    $headerValuesString = $headerValuesList -join "`n"

    #Gets the hash of the headers value
    $signatureHashString = Get-TorizonPlatformAPIStringHash -String $headerValuesString -HashName $httpSigningConfiguration.HashAlgorithm

    #Gets the Key type to select the correct signing algorithm
    $KeyType = Get-TorizonPlatformAPIKeyTypeFromFile -KeyFilePath $httpSigningConfiguration.KeyFilePath

    if ($keyType -eq "RSA") {
        $headerSignatureStr = Get-TorizonPlatformAPIRSASignature -PrivateKeyFilePath $httpSigningConfiguration.KeyFilePath `
            -DataToSign $signatureHashString `
            -HashAlgorithmName $httpSigningConfiguration.HashAlgorithm `
            -KeyPassPhrase $httpSigningConfiguration.KeyPassPhrase `
            -SigningAlgorithm $httpSigningConfiguration.SigningAlgorithm
    } elseif ($KeyType -eq "EC") {
        $headerSignatureStr = Get-TorizonPlatformAPIECDSASignature -ECKeyFilePath $httpSigningConfiguration.KeyFilePath `
            -DataToSign $signatureHashString `
            -HashAlgorithmName $httpSigningConfiguration.HashAlgorithm `
            -KeyPassPhrase $httpSigningConfiguration.KeyPassPhrase
    }
    #Deprecated
    <#$cryptographicScheme = Get-TorizonPlatformAPICryptographicScheme -SigningAlgorithm $httpSigningConfiguration.SigningAlgorithm `
                                                 -HashAlgorithm $httpSigningConfiguration.HashAlgorithm
    #>
    $cryptographicScheme = "hs2019"
    $authorizationHeaderValue = [string]::Format("Signature keyId=""{0}"",algorithm=""{1}""",
        $httpSigningConfiguration.KeyId, $cryptographicScheme)

    if ($HttpSignatureHeader.ContainsKey($HEADER_CREATED)) {
        $authorizationHeaderValue += [string]::Format(",created={0}", $HttpSignatureHeader[$HEADER_CREATED])
    }

    if ($HttpSignatureHeader.ContainsKey($HEADER_EXPIRES)) {
        $authorizationHeaderValue += [string]::Format(",expires={0}", $HttpSignatureHeader[$HEADER_EXPIRES])
    }

    $authorizationHeaderValue += [string]::Format(",headers=""{0}"",signature=""{1}""",
        $headersKeysString , $headerSignatureStr)

    $HttpSignedRequestHeader[$HEADER_AUTHORIZATION] = $authorizationHeaderValue
    return $HttpSignedRequestHeader
}

<#
.SYNOPSIS
    Gets the RSA signature

.DESCRIPTION
    Gets the RSA signature for the http signing
.PARAMETER PrivateKeyFilePath
    Specify the API key file path
.PARAMETER DataToSign
    Specify the data to sign
.PARAMETER HashAlgorithmName
    HashAlgorithm to calculate the hash
.PARAMETER KeyPassPhrase
    KeyPassPhrase for the encrypted key
.OUTPUTS
    Base64String
#>
function Get-TorizonPlatformAPIRSASignature {
    Param(
        [string]$PrivateKeyFilePath,
        [byte[]]$DataToSign,
        [string]$HashAlgorithmName,
        [string]$SigningAlgorithm,
        [securestring]$KeyPassPhrase
    )
    try {

        if ($hashAlgorithmName -eq "sha256") {
            $hashAlgo = [System.Security.Cryptography.HashAlgorithmName]::SHA256
        } elseif ($hashAlgorithmName -eq "sha512") {
            $hashAlgo = [System.Security.Cryptography.HashAlgorithmName]::SHA512
        }

        if ($PSVersionTable.PSVersion.Major -ge 7) {
            $ecKeyHeader = "-----BEGIN RSA PRIVATE KEY-----"
            $ecKeyFooter = "-----END RSA PRIVATE KEY-----"
            $keyStr = Get-Content -Path $PrivateKeyFilePath -Raw
            $ecKeyBase64String = $keyStr.Replace($ecKeyHeader, "").Replace($ecKeyFooter, "").Trim()
            $keyBytes = [System.Convert]::FromBase64String($ecKeyBase64String)
            $rsa = [System.Security.Cryptography.RSA]::Create()
            [int]$bytCount = 0
            $rsa.ImportRSAPrivateKey($keyBytes, [ref] $bytCount)

            if ($SigningAlgorithm -eq "RSASSA-PSS") {
                $signedBytes = $rsa.SignHash($DataToSign, $hashAlgo, [System.Security.Cryptography.RSASignaturePadding]::Pss)
            } else {
                $signedBytes = $rsa.SignHash($DataToSign, $hashAlgo, [System.Security.Cryptography.RSASignaturePadding]::Pkcs1)
            }
        } else {
            $rsa_provider_path = Join-Path -Path $PSScriptRoot -ChildPath "TorizonPlatformAPIRSAEncryptionProvider.cs"
            $rsa_provider_sourceCode = Get-Content -Path $rsa_provider_path -Raw
            Add-Type -TypeDefinition $rsa_provider_sourceCode

            [System.Security.Cryptography.RSA]$rsa = [RSAEncryption.RSAEncryptionProvider]::GetRSAProviderFromPemFile($PrivateKeyFilePath, $KeyPassPhrase)

            if ($SigningAlgorithm -eq "RSASSA-PSS") {
                throw "$SigningAlgorithm is not supported on $($PSVersionTable.PSVersion)"
            } else {
                $signedBytes = $rsa.SignHash($DataToSign, $hashAlgo, [System.Security.Cryptography.RSASignaturePadding]::Pkcs1)
            }
        }

        $signedString = [Convert]::ToBase64String($signedBytes)
        return $signedString
    } catch {
        throw $_
    }
}

<#
.SYNOPSIS
    Gets the ECDSA signature

.DESCRIPTION
    Gets the ECDSA signature for the http signing
.PARAMETER PrivateKeyFilePath
    Specify the API key file path
.PARAMETER DataToSign
    Specify the data to sign
.PARAMETER HashAlgorithmName
    HashAlgorithm to calculate the hash
.PARAMETER KeyPassPhrase
    KeyPassPhrase for the encrypted key
.OUTPUTS
    Base64String
#>
function Get-TorizonPlatformAPIECDSASignature {
    param(
        [Parameter(Mandatory = $true)]
        [string]$ECKeyFilePath,
        [Parameter(Mandatory = $true)]
        [byte[]]$DataToSign,
        [Parameter(Mandatory = $false)]
        [String]$HashAlgorithmName,
        [Parameter(Mandatory = $false)]
        [securestring]$KeyPassPhrase
    )
    if (!(Test-Path -Path $ECKeyFilePath)) {
        throw "key file path does not exist."
    }

    if ($PSVersionTable.PSVersion.Major -lt 7) {
        throw "ECDSA key is not supported on PowerShell version $($PSVersionTable.PSVersion), Use PowerShell v7.0 and above"
    }

    $ecKeyHeader = "-----BEGIN EC PRIVATE KEY-----"
    $ecKeyFooter = "-----END EC PRIVATE KEY-----"
    $keyStr = Get-Content -Path $ECKeyFilePath -Raw
    $ecKeyBase64String = $keyStr.Replace($ecKeyHeader, "").Replace($ecKeyFooter, "").Trim()
    $keyBytes = [System.Convert]::FromBase64String($ecKeyBase64String)
    $ecdsa = [System.Security.Cryptography.ECDsa]::Create()

    [int]$bytCount =0
    if (![string]::IsNullOrEmpty($KeyPassPhrase)) {
        $ecdsa.ImportEncryptedPkcs8PrivateKey($KeyPassPhrase,$keyBytes,[ref]$bytCount)
    } else {
        $ecdsa.ImportPkcs8PrivateKey($keyBytes,[ref]$bytCount)
    }

    $signedBytes = $ecdsa.SignHash($DataToSign)
    $derBytes =  ConvertTo-ECDSAANS1Format -RawBytes $signedBytes
    $signedString = [System.Convert]::ToBase64String($derBytes)
    return $signedString
}

<#
.Synopsis
    Gets the hash of string.
.Description
    Gets the hash of string
.Parameter String
    Specifies the string to calculate the hash
.Parameter HashName
    Specifies the hash name to calculate the hash, Accepted values are "SHA1", "SHA256" and "SHA512"
    It is recommended not to use "SHA1" to calculate the Hash
.Outputs
    String
#>
Function Get-TorizonPlatformAPIStringHash {
    param(
        [Parameter(Mandatory = $true)]
        [AllowEmptyString()]
        [string]$String,
        [Parameter(Mandatory = $true)]
        [ValidateSet("SHA1", "SHA256", "SHA512")]
        $HashName
    )
    $hashAlgorithm = [System.Security.Cryptography.HashAlgorithm]::Create($HashName)
    $hashAlgorithm.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($String))
}

<#
.Synopsis
    Gets the Unix time.
.Description
    Gets the Unix time
.Parameter Date
    Specifies the date to calculate the unix time
.Parameter ToTalTime
    Specifies the total time , Accepted values are "TotalDays", "TotalHours", "TotalMinutes", "TotalSeconds" and "TotalMilliseconds"
.Outputs
Integer
#>
function Get-TorizonPlatformAPIUnixTime {
    param(
        [Parameter(Mandatory = $true)]
        [DateTime]$Date,
        [Parameter(Mandatory = $false)]
        [ValidateSet("TotalDays", "TotalHours", "TotalMinutes", "TotalSeconds", "TotalMilliseconds")]
        [string]$TotalTime = "TotalSeconds"
    )
    $date1 = Get-Date -Date "01/01/1970"
    $timespan = New-TimeSpan -Start $date1 -End $Date
    switch ($TotalTime) {
        "TotalDays" { [int]$timespan.TotalDays }
        "TotalHours" { [int]$timespan.TotalHours }
        "TotalMinutes" { [int]$timespan.TotalMinutes }
        "TotalSeconds" { [int]$timespan.TotalSeconds }
        "TotalMilliseconds" { [int]$timespan.TotalMilliseconds }
    }
}

function Get-TorizonPlatformAPICryptographicScheme {
    param(
        [Parameter(Mandatory = $true)]
        [string]$SigningAlgorithm,
        [Parameter(Mandatory = $true)]
        [string]$HashAlgorithm
    )
    $rsaSignatureType = @("RSASSA-PKCS1-v1_5", "RSASSA-PSS")
    $SigningAlgorithm = $null
    if ($rsaSignatureType -contains $SigningAlgorithm) {
        switch ($HashAlgorithm) {
            "sha256" { $SigningAlgorithm = "rsa-sha256" }
            "sha512" { $SigningAlgorithm = "rsa-sha512" }
        }
    }
    return $SigningAlgorithm
}

<#
.Synopsis
    Gets the key type from the pem file.
.Description
    Gets the key type from the pem file.
.Parameter KeyFilePath
    Specifies the key file path (pem file)
.Outputs
String
#>
function Get-TorizonPlatformAPIKeyTypeFromFile {
    param(
        [Parameter(Mandatory = $true)]
        [string]$KeyFilePath
    )

    if (-not(Test-Path -Path $KeyFilePath)) {
        throw "Key file path does not exist."
    }
    $ecPrivateKeyHeader = "BEGIN EC PRIVATE KEY"
    $ecPrivateKeyFooter = "END EC PRIVATE KEY"
    $rsaPrivateKeyHeader = "BEGIN RSA PRIVATE KEY"
    $rsaPrivateFooter = "END RSA PRIVATE KEY"
    $pkcs8Header = "BEGIN PRIVATE KEY"
    $pkcs8Footer = "END PRIVATE KEY"
    $keyType = $null
    $key = Get-Content -Path $KeyFilePath

    if ($key[0] -match $rsaPrivateKeyHeader -and $key[$key.Length - 1] -match $rsaPrivateFooter) {
        $KeyType = "RSA"
    } elseif ($key[0] -match $ecPrivateKeyHeader -and $key[$key.Length - 1] -match $ecPrivateKeyFooter) {
        $keyType = "EC"
    } elseif ($key[0] -match $ecPrivateKeyHeader -and $key[$key.Length - 1] -match $ecPrivateKeyFooter) {
        <#this type of key can hold many type different types of private key, but here due lack of pem header
        Considering this as EC key
        #>
        #TODO :- update the key based on oid
        $keyType = "EC"
    } else {
        throw "Either the key is invalid or key is not supported"
    }
    return $keyType
}


<#
.Synopsis
    Converts sequence of R and S bytes to ANS1 format for ECDSASignature.
.Description
    Converts sequence of R and S bytes to ANS1 format for ECDSASignature.
.Parameter RawBytes[]
    Specifies the R and S bytes of ECDSA signature.
.Outputs
    Byte[]
#>
function ConvertTo-ECDSAANS1Format{
    Param(
        [Parameter(Mandatory = $true)]
        [byte[]]$RawBytes
    )

    $derLength = 68 #default length for ECDSA code signing bit 0x44
    $rbytesLength = 32 #R length 0x20
    $sbytesLength = 32 #S length 0x20
    [byte[]]$rBytes = $signedBytes[0..31]
    [byte[]]$sBytes = $signedBytes[32..63]

    if($rBytes[0] -gt 0x7F){
        $derLength++
        $rbytesLength++
        $rBytes = [byte[]]@(0x00) + $rBytes
    }

    if($sBytes[0] -gt 0x7F){
        $derLength++
        $sbytesLength++
        $sBytes = [byte[]]@(0x00) + $sBytes
    }

    [byte[]]$derBytes = @()

    $derBytes += 48  # start of the sequence 0x30
    $derBytes += $derLength  # total length r length, type and r bytes

    $derBytes += 2 # tag for integer
    $derBytes += $rbytesLength # length of r
    $derBytes += $rBytes

    $derBytes += 2 #tag for integer
    $derBytes += $sbytesLength #length of s
    $derBytes += $sBytes
    return $derBytes
}