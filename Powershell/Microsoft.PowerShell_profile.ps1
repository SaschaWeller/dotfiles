$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_DISTRO = "$([char]0xfab2)"


if ([bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")){
    $ENV:STARSHIP_USER   = "Administrator"
}else{
    #$ENV:STARSHIP_USER   = $UserName
    $ENV:STARSHIP_USER   = "Sascha"
}

Invoke-Expression (&starship init powershell)