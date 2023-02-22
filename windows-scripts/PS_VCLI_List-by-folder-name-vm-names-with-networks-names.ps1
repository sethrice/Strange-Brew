Import-Module VMware.PowerCLI
Connect-VIServer vcs7-01.cooldomain.local
$FOLDER = "lab-A-servers"
foreach($folder in Get-Folder -Name "$FOLDER*" | where {$_.Name -notlike "$FOLDER"}){
    echo "Folder: $folder"
    Get-Folder -Name "$folder" | Get-VM | Get-NetworkAdapter |
    Select @{N="VM";E={$_.Parent.Name}},Name,Type,NetworkName |ft -Autosize
}
