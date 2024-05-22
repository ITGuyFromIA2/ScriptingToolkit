param ([switch]$MakeChanges)

if ($MakeChanges) {$writeme = $true} else {$writeme = $False}

$TLS_Defs = @()


#0=TLS 1.0
#1=Client / Server
$str_SystemRegBase = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\{0}"
$NetReg_Base = "HKLM:\SOFTWARE{0}\Microsoft\.NETFramework"

#SSL 2.0
$TempObj = [pscustomobject]@{
    Protocol = "SSL"
    Version = '2.0'
    BaseKey = $str_SystemRegBase -f "SSL 2.0"
    SubKeys = @(
        [pscustomobject]@{
            Key = "Client"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          },
        [pscustomobject]@{
            Key = "Server"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })}
        )
}
$TLS_Defs += $TempObj

#SSL 3.0
$TempObj = [pscustomobject]@{
    Protocol = "SSL"
    Version = '3.0'
    BaseKey = $str_SystemRegBase -f "SSL 3.0"
    SubKeys = @(
        [pscustomobject]@{
            Key = "Client"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          },
        [pscustomobject]@{
            Key = "Server"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })}
        )
}
$TLS_Defs += $TempObj

$TempObj = [pscustomobject]@{
    Protocol = "TLS"
    Version = '1.0'
    BaseKey = $str_SystemRegBase -f "TLS 1.0"
    SubKeys = @(
        [pscustomobject]@{
            Key = "Client"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          },
        [pscustomobject]@{
            Key = "Server"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })}
        )
}
$TLS_Defs += $TempObj

#TLS 1.1
$TempObj = [pscustomobject]@{
    Protocol = "TLS"
    Version = '1.1'
    BaseKey = $str_SystemRegBase -f "TLS 1.1"
    SubKeys = @(
        [pscustomobject]@{
            Key = "Client"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          },
        [pscustomobject]@{
            Key = "Server"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })}
        )
}
$TLS_Defs += $TempObj

#TLS 1.2
$TempObj = [pscustomobject]@{
    Protocol = "TLS"
    Version = '1.2'
    BaseKey = $str_SystemRegBase -f "TLS 1.2"
    SubKeys = @(
        [pscustomobject]@{
            Key = "Client"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          },
        [pscustomobject]@{
            Key = "Server"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })}
        )
}
$TLS_Defs += $TempObj

#TLS 1.3
$TempObj = [pscustomobject]@{
    Protocol = "TLS"
    Version = '1.3'
    BaseKey = $str_SystemRegBase -f "TLS 1.3"
    SubKeys = @(
        [pscustomobject]@{
            Key = "Client"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          },
        [pscustomobject]@{
            Key = "Server"
            Values = @(
                @{
                    Name = "Enabled"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "DisabledByDefault"
                    EnabledValue = 1
                    DesiredValue = 0
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })}
        )
}
$TLS_Defs += $TempObj

$TempObj = [pscustomobject]@{
    Protocol = ".NET"
    Version = 'WOW6432'
    BaseKey = $NetReg_Base -f "\WOW6432Node"
    SubKeys = @(
        [pscustomobject]@{
            Key = "v4.0.30319"
            Values = @(
                @{
                    Name = "SystemDefaultTlsVersions"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "SchUseStrongCrypto"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          }
        )
}
$TLS_Defs += $TempObj

$TempObj = [pscustomobject]@{
    Protocol = ".NET"
    Version = 'WOW6432'
    BaseKey = $NetReg_Base -f "\WOW6432Node"
    SubKeys = @(
        [pscustomobject]@{
            Key = "v2.0.50727"
            Values = @(
                @{
                    Name = "SystemDefaultTlsVersions"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "SchUseStrongCrypto"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          }
        )
}
$TLS_Defs += $TempObj

$TempObj = [pscustomobject]@{
    Protocol = ".NET"
    Version = ''
    BaseKey = $NetReg_Base -f ""
    SubKeys = @(
        [pscustomobject]@{
            Key = "v4.0.30319"
            Values = @(
                @{
                    Name = "SystemDefaultTlsVersions"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "SchUseStrongCrypto"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          }
        )
}
$TLS_Defs += $TempObj

$TempObj = [pscustomobject]@{
    Protocol = ".NET"
    Version = ''
    BaseKey = $NetReg_Base -f ""
    SubKeys = @(
        [pscustomobject]@{
            Key = "v2.0.50727"
            Values = @(
                @{
                    Name = "SystemDefaultTlsVersions"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                },
                @{
                    Name = "SchUseStrongCrypto"
                    EnabledValue = 1
                    DesiredValue = 1
                    MatchVal = $False
                    Value = $null
                    ValType = "DWORD"
                })
          }
        )
}
$TLS_Defs += $TempObj



foreach ($proto in $TLS_Defs) {

    foreach ($ProtoKey in $proto.SubKeys) {
        foreach ($ProtoKeyVal in $ProtoKey.Values) {
            $TempVal = -1
            $TempVal = (get-itempropertyvalue -path "$($proto.BaseKey)\$($ProtoKey.key)" -name "$($ProtoKeyVal.Name)" -ErrorAction SilentlyContinue)
            $ProtoKeyVal.value = $TempVal
                if ($TempVal -eq $($ProtoKeyVal.DesiredValue)) {
                    $ProtoKeyVal.MatchVal = $true
                }
        }

    }

}


cls
if ($writeme) {
    $swap = "Made Changes"

} else {
    $swap = "Needs Changed"
}


$ProtoKeyVal = $ProtoKey.Values[0]
foreach ($proto in $TLS_Defs) {
    #Proto Output
        write-output "***************"

    foreach ($ProtoKey in $proto.SubKeys) {
        foreach ($ProtoKeyVal in $ProtoKey.Values) {
                if ($ProtoKeyVal.value -eq $ProtoKeyVal.EnabledValue) {
                    $Stat = "True"

                }  else {$Stat = "False"}

                if ($ProtoKeyVal.MatchVal -eq $False) {$NeedsChanged = "`t*$($swap)*"
                    if ($writeme -eq $true) {
                        #New-Item 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server' -Force | Out-Null
                        New-Item "$($proto.BaseKey)\$($ProtoKey.key)" -Force | Out-Null
                        #New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server' -name 'Enabled' -value '0' -PropertyType 'DWord' -Force | Out-Null
                        New-ItemProperty -path "$($proto.BaseKey)\$($ProtoKey.key)" -name "$($ProtoKeyVal.Name)" -value "$($ProtoKeyVal.DesiredValue)" -PropertyType "$($ProtoKeyVal.ValType)" -Force | Out-Null
                    } 
                } else {$NeedsChanged = ""}

                #if ($writeme -eq $true -and $ProtoKeyVal.Value -in $("",$null)) {
                #    Write-Output "Null Value"
                #New-Item "$($proto.BaseKey)\$($ProtoKey.key)" -Force | Out-Null
                #        #New-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server' -name 'Enabled' -value '0' -PropertyType 'DWord' -Force | Out-Null
                #        New-ItemProperty -path "$($proto.BaseKey)\$($ProtoKey.key)" -name "$($ProtoKeyVal.Name)" -value "$($ProtoKeyVal.DesiredValue)" -PropertyType "$($ProtoKeyVal.ValType)" -Force | Out-Null
               # 
               # }

                "$($proto.Protocol) $($proto.Version) - $($ProtoKey.Key) - {0,17}: $($Stat)$($NeedsChanged)" -f $($ProtoKeyVal.Name)
        }
        Write-Output ""

    }

}
pause